#!/usr/bin/env ruby
# MIT License - See LICENSE-CODE

# Combine individual JSON files from data/managers/ into package-managers.json
#
# Usage:
#   ruby scripts/combine-json.rb

require 'json'

# Read all JSON files from data/managers/
managers_dir = File.join(__dir__, '../data/managers')
output_file = File.join(__dir__, '../data/package-managers.json')

package_managers = {}

Dir.glob(File.join(managers_dir, '*.json')).sort.each do |file|
  data = JSON.parse(File.read(file))
  name = data['name']
  package_managers[name] = data
end

# Build the output structure
output = {
  'packageManagers' => package_managers
}

# Write to file with pretty printing
File.write(output_file, JSON.pretty_generate(output) + "\n")

puts "Combined #{package_managers.size} package managers into #{output_file}"
