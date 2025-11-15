# Package Manager Commands Cross-Reference

A cross-reference table of commands across different package managers, helping developers quickly find equivalent commands when switching between ecosystems.

## Overview

This repository provides:
- **Cross-reference table** of package manager commands
- **Structured data** in JSON format for programmatic use
- **Manpage archives** for reference

## Supported Package Managers

Currently includes **48 package managers**:

- **JavaScript** (5)
  - npm
  - yarn
  - pnpm
  - bun
  - deno
- **Python** (8)
  - pip
  - uv
  - poetry
  - pipenv
  - conda
  - pdm
  - hatch
  - mamba
- **Rust** (2)
  - cargo
  - rustup
- **Ruby** (3)
  - gem
  - bundler
  - rbenv
- **PHP** (1)
  - composer
- **Go** (1)
  - go
- **Java** (2)
  - maven
  - gradle
- **Clojure** (1)
  - leiningen
- **.NET** (2)
  - dotnet
  - nuget
- **Haskell** (2)
  - cabal
  - stack
- **Elixir** (1)
  - mix
- **Erlang** (1)
  - rebar3
- **Dart** (1)
  - pub
- **OCaml** (1)
  - opam
- **Perl** (2)
  - cpan
  - cpanm
- **Lua** (1)
  - luarocks
- **C/C++** (1)
  - conan
- **Containers** (2)
  - docker
  - podman
- **Kubernetes** (1)
  - helm
- **System** (8)
  - brew
  - apt
  - dnf
  - yum
  - pacman
  - apk
  - zypper
  - nix
- **Infrastructure** (2)
  - ansible-galaxy
  - terraform

## Usage

View the full comparison table:
- **[COMMANDS.md](COMMANDS.md)** - Markdown table
- **[commands.csv](commands.csv)** - CSV for spreadsheets

## Notes & Edge Cases

### Terminology Differences

**"Package" vs "Module" vs "Crate" vs "Gem"**
- npm/yarn/pnpm: "package"
- Python: "package" or "module"
- Rust: "crate"
- Ruby: "gem"
- Go: "module" or "package"
- Docker: "image" or "container"

**"Install" Semantics**
- **npm/yarn/pnpm**: `install` without arguments installs from lockfile; with package name adds new dependency
- **pip**: Always requires package name
- **cargo install**: Installs binary executables globally; use `cargo add` for adding dependencies
- **go install**: Installs binaries; use `go get` to add dependencies
- **bundler**: `bundle install` installs from Gemfile; use `bundle add` to add new gems
- **docker**: `pull` downloads images; `run` creates and starts containers

### Global vs Local

**Global Installation**
- **npm**: `-g` or `--global` flag
- **yarn**: `yarn global add`
- **pnpm**: `-g` flag
- **pip**: `--user` flag (or system-wide with sudo)
- **cargo**: `cargo install` is always global
- **gem**: Global by default
- **brew**: Global by default (system-wide)

### Lock Files

Different package managers use different lockfile formats:
- **npm**: `package-lock.json`
- **yarn**: `yarn.lock`
- **pnpm**: `pnpm-lock.yaml`
- **pip**: No automatic lockfile (use `pip freeze > requirements.txt`)
- **cargo**: `Cargo.lock`
- **bundler**: `Gemfile.lock`
- **go**: `go.sum` and `go.mod`

### Gotchas & Common Confusion

**pip search is disabled**
- `pip search` was disabled in 2021 due to abuse
- Use https://pypi.org or third-party tools instead

**cargo install vs cargo add**
- `cargo install` is for installing binary executables globally
- `cargo add` (newer) is for adding dependencies to your project

**npm ci vs npm install**
- `npm ci` (clean install) is faster, stricter, and preferred for CI/CD
- Deletes `node_modules` before installing
- Requires `package-lock.json`

**bundler vs gem**
- `gem` is the low-level package manager
- `bundler` manages application dependencies and ensures consistency
- Always use `bundle exec` to run commands with correct gem versions

**go get behavior changed**
- In Go 1.18+, `go get` no longer builds/installs packages
- Use `go install` for installing binaries
- Use `go get` only for adding dependencies

**docker run vs docker exec**
- `docker run` creates a NEW container from an image
- `docker exec` runs a command in an EXISTING container

**yarn 1.x vs yarn 2+ (Berry)**
- Yarn 2+ is a complete rewrite with different behavior
- Uses Plug'n'Play (PnP) by default instead of `node_modules`
- Check version with `yarn --version`

### Version Manager vs Package Manager

Some tools manage language versions, not packages:
- **rustup**: Manages Rust toolchains (compiler versions)
- **rbenv**: Manages Ruby versions
- **nvm**: Manages Node.js versions
- **pyenv**: Manages Python versions

These are included because they use similar command patterns.

### Platform-Specific Behavior

**brew**
- macOS and Linux only
- Installing "casks" (GUI apps) uses different commands: `brew install --cask [app]`

**docker**
- Requires Docker daemon to be running
- Platform-specific (Linux containers on macOS run in VM)

## Contributing

### Adding a New Package Manager

1. Fetch via Docker: `ruby scripts/fetch-via-docker.rb <manager-name>`
2. Create JSON file in `data/managers/<manager>.json`
3. Regenerate tables: `ruby scripts/generate-table.rb > COMMANDS.md`
4. Update README.md with the new count and ecosystem

### Generating Tables

Generate markdown table:
```bash
ruby scripts/generate-table.rb > COMMANDS.md
```

Generate CSV:
```bash
ruby scripts/generate-csv.rb > commands.csv
```

### Repository Structure

```
package-manager-commands/
├── README.md                 # This file
├── COMMANDS.md               # Full comparison table (generated)
├── commands.csv              # CSV export (generated)
├── data/
│   ├── package-managers.json # All package managers in one file
│   └── managers/             # Individual JSON files (48 total)
├── manpages/                 # Help output archives (50+ files)
└── scripts/
    ├── generate-table.rb     # Generate COMMANDS.md
    ├── generate-csv.rb       # Generate commands.csv
    └── fetch-via-docker.rb   # Fetch manpages via Docker
```

### Data Format

Individual package manager files:

```json
{
  "name": "npm",
  "ecosystem": "JavaScript",
  "description": "Node Package Manager",
  "commands": {
    "install": "npm install [package]",
    "uninstall": "npm uninstall [package]",
    ...
  }
}
```

### Remaining Package Managers

- sbt, vcpkg, R, Julia, Zig, apt-get, emerge, nala, macports
- Windows: chocolatey, scoop, winget
- BSD: pkg, pkg_add
- Cross-platform: guix, snap, flatpak, appimage

## License

- **Data** (JSON files, manpages, generated tables): [CC0 1.0 Universal](LICENSE) (Public Domain)
- **Code** (Ruby scripts): [MIT License](LICENSE-CODE)
