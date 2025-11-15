#!/usr/bin/env ruby
# MIT License - See LICENSE-CODE

# Generate a markdown comparison table from package-managers.json
#
# Usage:
#   ruby scripts/generate-table.rb
#   ruby scripts/generate-table.rb > COMMANDS.md

require 'json'

# Read the JSON data
data_path = File.join(__dir__, '../data/package-managers.json')
data = JSON.parse(File.read(data_path))

package_managers = data['packageManagers']
pm_names = package_managers.keys

# Define the canonical operations we want to compare
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

# Helper to get command for a package manager and operation
def get_command(package_managers, pm, op_key, fallback_key = nil)
  commands = package_managers[pm]['commands']

  return commands[op_key] if commands[op_key]
  return commands[fallback_key] if fallback_key && commands[fallback_key]

  'N/A'
end

# Generate header
puts '# Package Manager Command Cross-Reference'
puts ''
puts 'Auto-generated from `data/package-managers.json`'
puts ''

# Group by ecosystem
by_ecosystem = {}
pm_names.each do |pm|
  ecosystem = package_managers[pm]['ecosystem']
  by_ecosystem[ecosystem] ||= []
  by_ecosystem[ecosystem] << pm
end

puts '## Package Managers by Ecosystem'
puts ''
by_ecosystem.each do |ecosystem, pms|
  puts "- **#{ecosystem}**: #{pms.join(', ')}"
end
puts ''

puts '## Command Comparison Table'
puts ''

# Generate header row
header_row = (['Operation'] + pm_names).join(' | ')
separator_row = (['---'] + pm_names.map { '---' }).join(' | ')

puts "| #{header_row} |"
puts "| #{separator_row} |"

# Generate table rows
operations.each do |op|
  cells = pm_names.map do |pm|
    cmd = get_command(package_managers, pm, op[:key], op[:fallback])
    cmd == 'N/A' ? 'N/A' : "`#{cmd}`"
  end

  puts "| **#{op[:label]}** | #{cells.join(' | ')} |"
end

# Generate detailed command lists per package manager
puts ''
puts '## Detailed Command Lists'
puts ''

pm_names.each do |pm|
  pm_data = package_managers[pm]
  puts "### #{pm_data['name']}"
  puts ''
  puts "**Ecosystem**: #{pm_data['ecosystem']}"
  puts ''
  puts "**Description**: #{pm_data['description']}"
  puts ''
  puts '**Commands**:'
  puts ''

  pm_data['commands'].each do |key, cmd|
    puts "- `#{cmd}` - #{key}"
  end

  puts ''
end
