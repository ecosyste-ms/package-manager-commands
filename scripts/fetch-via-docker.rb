#!/usr/bin/env ruby
# MIT License - See LICENSE-CODE

# Fetch manpages via Docker containers
#
# Usage:
#   ruby scripts/fetch-via-docker.rb <package-manager>
#   ruby scripts/fetch-via-docker.rb maven
#
# This script runs the package manager's help command inside a Docker container
# and saves the output to manpages/

require 'json'

# Map of package managers to their Docker images and help commands
DOCKER_CONFIGS = {
  'maven' => {
    image: 'maven:latest',
    command: 'mvn --help',
    aliases: ['mvn']
  },
  'gradle' => {
    image: 'gradle:latest',
    command: 'gradle --help'
  },
  'poetry' => {
    image: 'python:latest',
    setup: 'pip install poetry > /dev/null 2>&1',
    command: 'poetry --help'
  },
  'pipenv' => {
    image: 'python:latest',
    setup: 'pip install pipenv > /dev/null 2>&1',
    command: 'pipenv --help'
  },
  'conda' => {
    image: 'continuumio/miniconda3:latest',
    command: 'conda --help'
  },
  'dnf' => {
    image: 'fedora:latest',
    command: 'dnf --help'
  },
  'yum' => {
    image: 'centos:7',
    command: 'yum --help'
  },
  'pacman' => {
    image: 'archlinux:latest',
    command: 'pacman --help'
  },
  'apk' => {
    image: 'alpine:latest',
    command: 'apk --help'
  },
  'nuget' => {
    image: 'mcr.microsoft.com/dotnet/sdk:latest',
    command: 'dotnet nuget --help'
  },
  'dotnet' => {
    image: 'mcr.microsoft.com/dotnet/sdk:latest',
    command: 'dotnet --help'
  },
  'mix' => {
    image: 'elixir:latest',
    command: 'mix help'
  },
  'pub' => {
    image: 'dart:latest',
    command: 'dart pub --help'
  },
  'bun' => {
    image: 'oven/bun:latest',
    command: 'bun --help'
  },
  'zypper' => {
    image: 'opensuse/leap:latest',
    command: 'zypper --help'
  },
  'npm' => {
    image: 'node:latest',
    command: 'npm --help'
  },
  'yarn' => {
    image: 'node:latest',
    command: 'yarn --help'
  },
  'pnpm' => {
    image: 'node:latest',
    setup: 'npm install -g pnpm > /dev/null 2>&1',
    command: 'pnpm --help'
  },
  'cabal' => {
    image: 'haskell:latest',
    command: 'cabal --help'
  },
  'stack' => {
    image: 'haskell:latest',
    command: 'stack --help'
  },
  'opam' => {
    image: 'ocaml/opam:latest',
    command: 'opam --help'
  },
  'luarocks' => {
    image: 'nickblah/lua:latest',
    command: 'luarocks --help'
  },
  'rebar3' => {
    image: 'erlang:latest',
    command: 'rebar3 help'
  },
  'nix' => {
    image: 'nixos/nix:latest',
    command: 'nix --help'
  },
  'snap' => {
    image: 'ubuntu:latest',
    setup: 'apt-get update > /dev/null 2>&1 && apt-get install -y snapd > /dev/null 2>&1',
    command: 'snap help'
  },
  'flatpak' => {
    image: 'ubuntu:latest',
    setup: 'apt-get update > /dev/null 2>&1 && apt-get install -y flatpak > /dev/null 2>&1',
    command: 'flatpak --help'
  },
  'helm' => {
    image: 'alpine/helm:latest',
    command: 'helm --help'
  },
  'pdm' => {
    image: 'python:latest',
    setup: 'pip install pdm > /dev/null 2>&1',
    command: 'pdm --help'
  },
  'cpan' => {
    image: 'perl:latest',
    command: 'cpan -h'
  },
  'deno' => {
    image: 'denoland/deno:latest',
    command: 'deno --help'
  },
  'conan' => {
    image: 'conanio/conan:latest',
    command: 'conan --help'
  },
  'vcpkg' => {
    image: 'ubuntu:latest',
    setup: 'apt-get update > /dev/null 2>&1 && apt-get install -y git curl zip unzip tar > /dev/null 2>&1 && git clone https://github.com/microsoft/vcpkg.git /vcpkg > /dev/null 2>&1 && /vcpkg/bootstrap-vcpkg.sh > /dev/null 2>&1',
    command: '/vcpkg/vcpkg --help'
  },
  'sbt' => {
    image: 'sbtscala/scala-sbt:latest',
    command: 'sbt --help'
  },
  'podman' => {
    image: 'quay.io/podman/stable:latest',
    command: 'podman --help'
  },
  'hatch' => {
    image: 'python:latest',
    setup: 'pip install hatch > /dev/null 2>&1',
    command: 'hatch --help'
  },
  'guix' => {
    image: 'guix:latest',
    command: 'guix --help'
  },
  'ansible-galaxy' => {
    image: 'ansible/ansible:latest',
    command: 'ansible-galaxy --help'
  },
  'terraform' => {
    image: 'hashicorp/terraform:latest',
    command: 'terraform -help'
  },
  'mamba' => {
    image: 'condaforge/mambaforge:latest',
    command: 'mamba --help'
  },
  'leiningen' => {
    image: 'clojure:lein',
    command: 'lein help'
  },
  'cpanm' => {
    image: 'perl:latest',
    setup: 'cpan -T App::cpanminus > /dev/null 2>&1',
    command: 'cpanm --help'
  }
}

def fetch_manpage(pm_name, config)
  output_file = File.join(__dir__, '../manpages', "#{pm_name}.txt")

  puts "Fetching #{pm_name} from Docker image #{config[:image]}..."

  # Pull the image first (to avoid pull messages in output)
  puts "  Pulling image..."
  system("docker pull #{config[:image]} > /dev/null 2>&1")

  # Build the docker command
  docker_cmd = "docker run --rm #{config[:image]} /bin/sh -c '"
  docker_cmd += "#{config[:setup]} && " if config[:setup]
  docker_cmd += "#{config[:command]}'"

  # Run and capture output
  output = `#{docker_cmd} 2>&1`

  if $?.success? || !output.empty?
    File.write(output_file, output)
    puts "✓ Saved to #{output_file}"
    return true
  else
    puts "✗ Failed to fetch #{pm_name}"
    return false
  end
end

# Main execution
if ARGV.empty?
  puts "Available package managers:"
  DOCKER_CONFIGS.keys.sort.each { |pm| puts "  - #{pm}" }
  puts "\nUsage: ruby #{__FILE__} <package-manager>"
  puts "   or: ruby #{__FILE__} all"
  exit 0
end

if ARGV[0] == 'all'
  puts "Fetching all package managers via Docker...\n\n"
  success_count = 0
  DOCKER_CONFIGS.each do |pm_name, config|
    success_count += 1 if fetch_manpage(pm_name, config)
    puts
  end
  puts "Successfully fetched #{success_count}/#{DOCKER_CONFIGS.size} package managers"
else
  pm_name = ARGV[0]
  config = DOCKER_CONFIGS[pm_name]

  if config.nil?
    puts "Error: Unknown package manager '#{pm_name}'"
    puts "Available: #{DOCKER_CONFIGS.keys.join(', ')}"
    exit 1
  end

  fetch_manpage(pm_name, config)
end
