# Package Manager Commands Cross-Reference

A cross-reference table of commands across different package managers, helping developers quickly find equivalent commands when switching between ecosystems.

**View the comparison table:**
- **[commands.csv](commands.csv)** - CSV for spreadsheets
- **[commands.md](commands.md)** - Markdown table

## Overview

This repository provides:
- **Cross-reference table** of package manager commands
- **Structured data** in JSON format for programmatic use
- **Manpage archives** for reference

## Supported Package Managers

Currently includes **61 package managers**:

- **JavaScript**
  - npm
  - yarn
  - pnpm
  - bun
  - deno
- **Python**
  - pip
  - uv
  - poetry
  - pipenv
  - pdm
  - hatch
- **Rust**
  - cargo
  - rustup
- **Ruby**
  - gem
  - bundler
  - rbenv
- **PHP**
  - composer
- **Go**
  - go
- **Java**
  - maven
  - gradle
- **Clojure**
  - leiningen
- **.NET**
  - dotnet
  - nuget
- **Haskell**
  - cabal
  - stack
- **Elixir**
  - mix
- **Erlang**
  - rebar3
- **Dart**
  - pub
- **OCaml**
  - opam
- **Perl**
  - cpan
  - cpanm
- **Lua**
  - luarocks
- **C/C++**
  - conan
- **Containers**
  - docker
  - podman
- **Kubernetes**
  - helm
- **System**
  - apk
  - apt
  - brew
  - cards
  - conda
  - dnf
  - emerge
  - eopkg
  - mamba
  - nix
  - pacman
  - pkg
  - pkgcon
  - pkgtools
  - ports
  - slackpkg
  - slapt-get
  - smart
  - snap
  - urpmi
  - xbps
  - yum
  - zypper
- **Infrastructure**
  - ansible-galaxy
  - terraform


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

To add a new package manager:

1. Add manpage: `<manager> --help > manpages/<manager>.txt`
2. Create JSON file: `data/managers/<manager>.json`
3. Regenerate tables:
   ```bash
   ruby scripts/combine-json.rb
   ruby scripts/generate-table.rb > commands.md
   ruby scripts/generate-csv.rb > commands.csv
   ```
4. Update README.md with the new count

### Repository Structure

```
package-manager-commands/
├── README.md                 # This file
├── commands.md               # Full comparison table (generated)
├── commands.csv              # CSV export (generated)
├── data/
│   ├── package-managers.json # All package managers in one file
│   └── managers/             # Individual JSON files (61 total)
├── manpages/                 # Help output archives (50+ files)
└── scripts/
    ├── combine-json.rb       # Combine individual JSON files
    ├── generate-table.rb     # Generate commands.md
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

## License

- **Data** (JSON files, generated tables): [CC0 1.0 Universal](LICENSE) (Public Domain)
- **Code** (Ruby scripts): [MIT License](LICENSE-CODE)
- **Manpages**: Subject to the licenses of their respective projects
