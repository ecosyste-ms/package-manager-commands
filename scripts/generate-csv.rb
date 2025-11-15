#!/usr/bin/env ruby
# MIT License - See LICENSE-CODE

# Generate a CSV comparison table from package-managers.json
#
# Usage:
#   ruby scripts/generate-csv.rb > commands.csv

require 'json'
require 'csv'

# Read the JSON data
data_path = File.join(__dir__, '../data/package-managers.json')
data = JSON.parse(File.read(data_path))

package_managers = data['packageManagers']
pm_names = package_managers.keys.sort

# Define the canonical operations
operations = [
  { key: 'install', label: 'Install package' },
  { key: 'uninstall', label: 'Uninstall' },
  { key: 'update', label: 'Update packages' },
  { key: 'search', label: 'Search' },
  { key: 'info', label: 'Show info' },
  { key: 'list', label: 'List installed' },
  { key: 'list-global', label: 'List global packages' },
  { key: 'outdated', label: 'Show outdated' },
  { key: 'init', label: 'Initialize project' },
  { key: 'add', label: 'Add dependency to manifest' },
  { key: 'remove', label: 'Remove dependency from manifest' },
  { key: 'run', label: 'Run script/command' },
  { key: 'exec', label: 'Execute in context' },
  { key: 'test', label: 'Run tests' },
  { key: 'build', label: 'Build project' },
  { key: 'check', label: 'Check/verify' },
  { key: 'publish', label: 'Publish' },
  { key: 'pack', label: 'Package for distribution' },
  { key: 'login', label: 'Login/authenticate' },
  { key: 'logout', label: 'Logout' },
  { key: 'link', label: 'Link (dev)' },
  { key: 'unlink', label: 'Unlink' },
  { key: 'cache', label: 'Clean/cache' },
  { key: 'clean', label: 'Clean build artifacts' },
  { key: 'audit', label: 'Audit security' },
  { key: 'why', label: 'Why/dependency tree' },
  { key: 'tree', label: 'Dependency tree' },
  { key: 'lock', label: 'Lock dependencies' },
  { key: 'format', label: 'Format code' },
  { key: 'licenses', label: 'Show licenses' },
  { key: 'self-update', label: 'Update package manager itself' },
  { key: 'config', label: 'Config' },
  { key: 'doctor', label: 'Diagnose issues' },
  { key: 'help', label: 'Help' }
]

# Helper to get command
def get_command(package_managers, pm, op_key, fallback_key = nil)
  commands = package_managers[pm]['commands']
  return commands[op_key] if commands[op_key]
  return commands[fallback_key] if fallback_key && commands[fallback_key]
  'N/A'
end

# Generate CSV
CSV do |csv|
  # Header row
  csv << ['Operation'] + pm_names

  # Data rows
  operations.each do |op|
    row = [op[:label]]
    pm_names.each do |pm|
      cmd = get_command(package_managers, pm, op[:key], op[:fallback])
      row << cmd
    end
    csv << row
  end
end
