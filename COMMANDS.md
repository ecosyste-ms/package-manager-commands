# Package Manager Command Cross-Reference

Auto-generated from `data/package-managers.json`

## Package Managers by Ecosystem

- **Infrastructure**: ansible-galaxy, terraform
- **System (Alpine Linux)**: apk
- **System (Debian/Ubuntu)**: apt
- **macOS/Linux**: brew
- **JavaScript**: bun, deno, npm, pnpm, yarn
- **Ruby**: bundler, gem, rbenv
- **Haskell**: cabal, stack
- **Rust**: cargo, rustup
- **PHP**: composer
- **C/C++**: conan
- **Python**: conda, hatch, mamba, pdm, pip, pipenv, poetry, uv
- **Perl**: cpan, cpanm
- **System (Fedora/RHEL)**: dnf
- **Containers**: docker, podman
- **.NET**: dotnet, nuget
- **Go**: go
- **Java**: gradle, maven
- **Kubernetes**: helm
- **Clojure**: leiningen
- **Lua**: luarocks
- **Elixir**: mix
- **System (NixOS/Cross-platform)**: nix
- **OCaml**: opam
- **System (Arch Linux)**: pacman
- **Dart**: pub
- **Erlang**: rebar3
- **System (RHEL/CentOS)**: yum
- **System (openSUSE)**: zypper

## Command Comparison Table

| Operation | ansible-galaxy | apk | apt | brew | bun | bundler | cabal | cargo | composer | conan | conda | cpan | cpanm | deno | dnf | docker | dotnet | gem | go | gradle | hatch | helm | leiningen | luarocks | mamba | maven | mix | nix | npm | nuget | opam | pacman | pdm | pip | pipenv | pnpm | podman | poetry | pub | rbenv | rebar3 | rustup | stack | terraform | uv | yarn | yum | zypper |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| **Install package** | `ansible-galaxy install [role]` | N/A | `apt install [package]` | `brew install [formula]` | `bun install` | `bundle install` | `cabal install [package]` | `cargo install [package]` | `composer install` | `conan install [package]` | `conda install [package]` | `cpan [module]` | `cpanm [module]` | `deno install [package]` | `dnf install [package]` | N/A | N/A | `gem install [package]` | `go install [package]` | N/A | N/A | `helm install [name] [chart]` | `lein install` | `luarocks install [rock]` | `mamba install [package]` | `mvn install` | N/A | `nix profile install [package]` | `npm install [package]` | N/A | `opam install [package]` | `pacman -S [package]` | `pdm install` | `pip install [package]` | `pipenv install [package]` | `pnpm add [package]` | N/A | `poetry install` | N/A | `rbenv install [version]` | N/A | `rustup toolchain install [toolchain]` | `stack install [package]` | N/A | `uv pip install [package]` | `yarn add [package]` | `yum install [package]` | `zypper install [package]` |
| **Uninstall** | N/A | N/A | N/A | `brew uninstall [formula]` | N/A | N/A | N/A | `cargo uninstall [package]` | N/A | N/A | N/A | N/A | `cpanm -U [module]` | `deno uninstall [package]` | N/A | N/A | N/A | `gem uninstall [package]` | N/A | N/A | N/A | `helm uninstall [name]` | N/A | N/A | N/A | N/A | N/A | N/A | `npm uninstall [package]` | N/A | N/A | N/A | N/A | `pip uninstall [package]` | `pipenv uninstall [package]` | `pnpm remove [package]` | N/A | N/A | N/A | `rbenv uninstall [version]` | N/A | `rustup toolchain uninstall [toolchain]` | N/A | N/A | `uv pip uninstall [package]` | `yarn remove [package]` | N/A | N/A |
| **Update packages** | N/A | `apk update` | `apt update` | `brew update` | `bun update [package]` | `bundle update [gem]` | `cabal update` | `cargo update [package]` | `composer update [package]` | N/A | `conda update [package]` | `cpan -r` | N/A | N/A | `dnf update` | N/A | N/A | `gem update [package]` | N/A | N/A | N/A | N/A | N/A | N/A | `mamba update [package]` | N/A | N/A | N/A | `npm update [package]` | N/A | `opam update` | `pacman -Sy` | `pdm update [package]` | N/A | `pipenv update [package]` | `pnpm update [package]` | N/A | `poetry update [package]` | N/A | N/A | `rebar3 update` | `rustup update` | `stack update` | N/A | N/A | `yarn upgrade [package]` | `yum update [package]` | `zypper update` |
| **Search** | `ansible-galaxy search [query]` | `apk search [query]` | `apt search [query]` | `brew search [query]` | N/A | N/A | N/A | `cargo search [query]` | `composer search [query]` | `conan search [query]` | `conda search [query]` | `cpan -a [query]` | N/A | N/A | `dnf search [query]` | `docker search [query]` | N/A | `gem search [query]` | N/A | N/A | N/A | `helm search [query]` | N/A | `luarocks search [query]` | `mamba search [query]` | N/A | N/A | `nix search [query]` | `npm search [query]` | N/A | `opam search [query]` | `pacman -Ss [query]` | `pdm search [query]` | `pip search [query]` | N/A | `pnpm search [query]` | `podman search [query]` | `poetry search [query]` | N/A | N/A | N/A | N/A | N/A | N/A | N/A | `yarn info [package]` | `yum search [query]` | `zypper search [query]` |
| **Show info** | `ansible-galaxy info [role]` | `apk info [package]` | N/A | `brew info [formula]` | `bun info [package]` | `bundle show [gem]` | `cabal info [package]` | `cargo info [package]` | N/A | `conan info [package]` | `conda info` | `cpan -D [module]` | `cpanm --info [module]` | `deno info` | `dnf info [package]` | `docker info` | N/A | `gem info [package]` | N/A | N/A | N/A | N/A | N/A | N/A | `mamba info` | N/A | N/A | N/A | `npm info [package]` | N/A | `opam info [package]` | `pacman -Si [package]` | `pdm info` | `pip show [package]` | N/A | `pnpm view [package]` | `podman info` | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | `yarn info [package]` | `yum info [package]` | `zypper info [package]` |
| **List installed** | `ansible-galaxy list` | `apk list` | `apt list` | `brew list` | N/A | `bundle list` | `cabal list [package]` | N/A | N/A | N/A | `conda list` | N/A | N/A | N/A | `dnf list` | N/A | `dotnet list package` | `gem list` | `go list` | N/A | N/A | `helm list` | N/A | `luarocks list` | `mamba list` | N/A | N/A | `nix profile list` | `npm list` | `dotnet nuget list source` | `opam list` | `pacman -Q` | `pdm list` | `pip list` | N/A | `pnpm list` | N/A | N/A | N/A | N/A | N/A | `rustup toolchain list` | N/A | N/A | `uv pip list` | `yarn list` | `yum list` | `zypper list-updates` |
| **List global packages** | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A |
| **Show outdated** | N/A | N/A | N/A | `brew outdated` | `bun outdated` | `bundle outdated` | `cabal outdated` | N/A | `composer outdated` | N/A | N/A | N/A | N/A | `deno outdated` | N/A | N/A | N/A | `gem outdated` | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | `npm outdated` | N/A | N/A | N/A | `pdm outdated` | `pip list --outdated` | N/A | `pnpm outdated` | N/A | N/A | `dart pub outdated` | N/A | N/A | N/A | N/A | N/A | N/A | `yarn outdated` | N/A | N/A |
| **Initialize project** | `ansible-galaxy init [role]` | N/A | N/A | N/A | `bun init` | `bundle init` | `cabal init` | `cargo init` | `composer init` | N/A | N/A | N/A | N/A | `deno init` | N/A | N/A | N/A | N/A | N/A | `gradle init` | `hatch init` | N/A | N/A | N/A | N/A | N/A | N/A | N/A | `npm init` | N/A | `opam init` | N/A | `pdm init` | N/A | N/A | `pnpm init` | N/A | `poetry init` | N/A | N/A | N/A | N/A | `stack init` | `terraform init` | `uv init` | `yarn init` | N/A | N/A |
| **Add dependency to manifest** | N/A | `apk add [package]` | N/A | N/A | `bun add [package]` | `bundle add [gem]` | N/A | `cargo add [package]` | N/A | N/A | N/A | N/A | N/A | `deno add [package]` | N/A | N/A | `dotnet add package [package]` | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | `dotnet nuget add source [url]` | N/A | N/A | `pdm add [package]` | N/A | N/A | N/A | N/A | `poetry add [package]` | `dart pub add [package]` | N/A | N/A | N/A | N/A | N/A | `uv add [package]` | N/A | N/A | N/A |
| **Remove dependency from manifest** | `ansible-galaxy remove [role]` | N/A | `apt remove [package]` | N/A | `bun remove [package]` | `bundle remove [gem]` | N/A | `cargo remove [package]` | `composer remove [package]` | `conan remove [package]` | `conda remove [package]` | `cpan -U [module]` | N/A | `deno remove [package]` | `dnf remove [package]` | N/A | `dotnet remove package [package]` | N/A | N/A | N/A | N/A | N/A | N/A | `luarocks remove [rock]` | `mamba remove [package]` | N/A | N/A | `nix profile remove [package]` | N/A | `dotnet nuget remove source [name]` | `opam remove [package]` | `pacman -R [package]` | `pdm remove [package]` | N/A | N/A | N/A | N/A | `poetry remove [package]` | `dart pub remove [package]` | N/A | N/A | N/A | N/A | N/A | `uv remove [package]` | N/A | `yum remove [package]` | `zypper remove [package]` |
| **Run script/command** | N/A | N/A | N/A | N/A | `bun run [script]` | N/A | `cabal run` | `cargo run` | N/A | N/A | N/A | N/A | N/A | `deno run [file]` | N/A | `docker run [image]` | `dotnet run` | N/A | `go run [file]` | `gradle run` | `hatch run [command]` | N/A | `lein run` | N/A | N/A | N/A | `mix run` | `nix run [package]` | `npm run [script]` | N/A | N/A | N/A | `pdm run [script]` | N/A | `pipenv run [command]` | `pnpm run [script]` | `podman run [image]` | `poetry run [command]` | N/A | N/A | N/A | N/A | `stack run` | N/A | `uv run [command]` | `yarn run [script]` | N/A | N/A |
| **Execute in context** | N/A | N/A | N/A | N/A | `bun x [command]` | `bundle exec [command]` | N/A | N/A | `composer exec [command]` | N/A | N/A | N/A | N/A | N/A | N/A | `docker exec [container] [command]` | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | `npx [command]` | N/A | `opam exec [command]` | N/A | N/A | N/A | N/A | `pnpm exec [command]` | `podman exec [container] [command]` | N/A | N/A | N/A | N/A | N/A | `stack exec [command]` | N/A | N/A | `yarn exec [command]` | N/A | N/A |
| **Run tests** | N/A | N/A | N/A | N/A | `bun test` | N/A | `cabal test` | `cargo test` | N/A | `conan test [path]` | N/A | N/A | N/A | `deno test` | N/A | N/A | `dotnet test` | N/A | `go test` | `gradle test` | `hatch test` | N/A | `lein test` | N/A | N/A | `mvn test` | `mix test` | N/A | `npm test` | N/A | N/A | N/A | N/A | N/A | N/A | `pnpm test` | N/A | N/A | N/A | N/A | `rebar3 test` | N/A | `stack test` | N/A | N/A | `yarn test` | N/A | N/A |
| **Build project** | N/A | N/A | N/A | N/A | `bun build [file]` | N/A | `cabal build` | `cargo build` | N/A | `conan build [path]` | N/A | N/A | N/A | `deno compile [file]` | N/A | `docker build [path]` | `dotnet build` | `gem build [gemspec]` | `go build` | `gradle build` | `hatch build` | N/A | N/A | `luarocks build` | N/A | N/A | N/A | `nix build` | N/A | N/A | N/A | N/A | `pdm build` | N/A | N/A | N/A | `podman build [path]` | `poetry build` | N/A | N/A | N/A | N/A | `stack build` | N/A | `uv build` | N/A | N/A | N/A |
| **Check/verify** | N/A | N/A | N/A | N/A | N/A | `bundle check` | `cabal check` | `cargo check` | N/A | N/A | N/A | N/A | N/A | `deno check` | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | `pip check` | `pipenv check` | N/A | N/A | `poetry check` | N/A | N/A | N/A | `rustup check` | N/A | N/A | N/A | N/A | N/A | N/A |
| **Publish** | N/A | N/A | N/A | N/A | `bun publish` | N/A | N/A | `cargo publish` | N/A | N/A | N/A | N/A | N/A | `deno publish` | N/A | N/A | `dotnet publish` | N/A | N/A | N/A | `hatch publish` | N/A | N/A | N/A | N/A | N/A | N/A | N/A | `npm publish` | N/A | N/A | N/A | `pdm publish` | N/A | N/A | `pnpm publish` | N/A | `poetry publish` | `dart pub publish` | N/A | N/A | N/A | N/A | N/A | `uv publish` | `yarn publish` | N/A | N/A |
| **Package for distribution** | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | `dotnet pack` | N/A | N/A | N/A | N/A | N/A | N/A | `luarocks pack [rock]` | N/A | N/A | N/A | N/A | `npm pack` | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A |
| **Login/authenticate** | N/A | N/A | N/A | N/A | N/A | N/A | N/A | `cargo login` | N/A | N/A | N/A | N/A | N/A | N/A | N/A | `docker login` | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | `npm login` | N/A | N/A | N/A | N/A | N/A | N/A | `pnpm login` | `podman login` | N/A | `dart pub login` | N/A | N/A | N/A | N/A | N/A | N/A | `yarn login` | N/A | N/A |
| **Logout** | N/A | N/A | N/A | N/A | N/A | N/A | N/A | `cargo logout` | N/A | N/A | N/A | N/A | N/A | N/A | N/A | `docker logout` | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | `npm logout` | N/A | N/A | N/A | N/A | N/A | N/A | `pnpm logout` | `podman logout` | N/A | `dart pub logout` | N/A | N/A | N/A | N/A | N/A | N/A | `yarn logout` | N/A | N/A |
| **Link (dev)** | N/A | N/A | N/A | `brew link [formula]` | `bun link [package]` | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | `npm link [package]` | N/A | N/A | N/A | N/A | N/A | N/A | `pnpm link [package]` | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | `yarn link` | N/A | N/A |
| **Unlink** | N/A | N/A | N/A | `brew unlink [formula]` | `bun unlink` | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | `npm unlink [package]` | N/A | N/A | N/A | N/A | N/A | N/A | `pnpm unlink [package]` | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | `yarn unlink` | N/A | N/A |
| **Clean/cache** | N/A | `apk cache clean` | N/A | N/A | N/A | `bundle cache` | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | `npm cache <subcommand>` | N/A | N/A | N/A | `pdm cache clear` | `pip cache <subcommand>` | N/A | N/A | N/A | `poetry cache clear` | `dart pub cache` | N/A | N/A | N/A | N/A | N/A | `uv cache` | `yarn cache clean` | N/A | N/A |
| **Clean build artifacts** | N/A | N/A | N/A | N/A | N/A | `bundle clean` | `cabal clean` | `cargo clean` | N/A | N/A | `conda clean --all` | N/A | N/A | `deno clean` | `dnf clean all` | N/A | `dotnet clean` | N/A | `go clean` | `gradle clean` | `hatch clean` | N/A | `lein clean` | N/A | `mamba clean --all` | `mvn clean` | `mix clean` | N/A | N/A | N/A | `opam clean` | `pacman -Sc` | N/A | N/A | `pipenv clean` | N/A | N/A | N/A | N/A | N/A | `rebar3 clean` | N/A | `stack clean` | N/A | N/A | N/A | `yum clean all` | `zypper clean` |
| **Audit security** | N/A | N/A | N/A | N/A | `bun audit` | N/A | N/A | N/A | `composer audit` | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | `npm audit` | N/A | N/A | N/A | N/A | N/A | N/A | `pnpm audit` | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | `yarn audit` | N/A | N/A |
| **Why/dependency tree** | N/A | N/A | N/A | N/A | `bun why [package]` | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | `dotnet nuget why [package]` | N/A | N/A | N/A | N/A | N/A | `pnpm why [package]` | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | `yarn why [package]` | N/A | N/A |
| **Dependency tree** | N/A | N/A | N/A | N/A | N/A | N/A | N/A | `cargo tree` | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | `rebar3 tree` | N/A | N/A | N/A | `uv tree` | N/A | N/A | N/A |
| **Lock dependencies** | N/A | N/A | N/A | N/A | N/A | `bundle lock` | N/A | N/A | N/A | `conan lock` | N/A | N/A | N/A | N/A | N/A | N/A | N/A | `gem lock [package]` | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | `pdm lock` | N/A | `pipenv lock` | N/A | N/A | `poetry lock` | N/A | N/A | N/A | N/A | N/A | N/A | `uv lock` | N/A | N/A | N/A |
| **Format code** | N/A | N/A | N/A | N/A | N/A | N/A | N/A | `cargo fmt` | N/A | N/A | N/A | N/A | N/A | `deno fmt` | N/A | N/A | `dotnet format` | N/A | `go fmt` | N/A | N/A | N/A | N/A | N/A | N/A | N/A | `mix format` | `nix fmt` | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | `terraform fmt` | `uv format` | N/A | N/A | N/A |
| **Show licenses** | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | `composer licenses` | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | `pnpm licenses` | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A |
| **Update package manager itself** | N/A | N/A | N/A | N/A | `bun upgrade` | N/A | N/A | N/A | `composer self-update` | N/A | N/A | N/A | `cpanm --self-upgrade` | `deno upgrade` | N/A | N/A | N/A | `gem update --system` | N/A | N/A | `hatch self update` | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | `poetry self update` | N/A | N/A | N/A | `rustup self update` | N/A | N/A | N/A | N/A | N/A | N/A |
| **Config** | N/A | N/A | N/A | `brew config` | N/A | `bundle config` | N/A | `cargo config` | `composer config [key] [value]` | `conan config` | `conda config` | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | `hatch config` | N/A | N/A | N/A | N/A | N/A | N/A | N/A | `npm config <subcommand>` | N/A | `opam config` | N/A | `pdm config` | `pip config <subcommand>` | N/A | `pnpm config <subcommand>` | N/A | `poetry config` | N/A | N/A | N/A | N/A | N/A | N/A | N/A | `yarn config <subcommand>` | N/A | N/A |
| **Diagnose issues** | N/A | N/A | N/A | `brew doctor` | N/A | `bundle doctor` | N/A | N/A | N/A | N/A | `conda doctor` | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A | N/A |
| **Help** | `ansible-galaxy --help` | `apk --help` | `apt help [command]` | `brew help [command]` | `bun --help` | `bundle help [command]` | `cabal --help` | `cargo help [command]` | `composer help [command]` | `conan --help` | `conda --help` | `cpan -h` | `cpanm --help` | `deno --help` | `dnf --help` | `docker help [command]` | `dotnet --help` | `gem help [command]` | `go help [command]` | `gradle --help` | `hatch --help` | `helm --help` | `lein help` | `luarocks --help` | `mamba --help` | `mvn --help` | `mix help [task]` | `nix --help` | `npm help [command]` | `dotnet nuget --help` | `opam --help` | `pacman --help` | `pdm --help` | `pip help [command]` | `pipenv --help` | `pnpm help [command]` | `podman --help` | `poetry help [command]` | `dart pub --help` | `rbenv help [command]` | `rebar3 help` | `rustup help [command]` | `stack --help` | `terraform --help` | `uv help [command]` | `yarn help [command]` | `yum --help` | `zypper --help` |

## Detailed Command Lists

### ansible-galaxy

**Ecosystem**: Infrastructure

**Description**: Ansible role and collection manager

**Commands**:

- `ansible-galaxy install [role]` - install
- `ansible-galaxy remove [role]` - remove
- `ansible-galaxy list` - list
- `ansible-galaxy search [query]` - search
- `ansible-galaxy info [role]` - info
- `ansible-galaxy init [role]` - init
- `ansible-galaxy --help` - help

### apk

**Ecosystem**: System (Alpine Linux)

**Description**: Alpine Linux package manager

**Commands**:

- `apk add [package]` - add
- `apk del [package]` - del
- `apk update` - update
- `apk upgrade` - upgrade
- `apk search [query]` - search
- `apk info [package]` - info
- `apk list` - list
- `apk cache clean` - cache
- `apk fix` - fix
- `apk --help` - help

### apt

**Ecosystem**: System (Debian/Ubuntu)

**Description**: Advanced Package Tool for Debian-based systems

**Commands**:

- `apt update` - update
- `apt upgrade` - upgrade
- `apt full-upgrade` - full-upgrade
- `apt install [package]` - install
- `apt remove [package]` - remove
- `apt purge [package]` - purge
- `apt autoremove` - autoremove
- `apt search [query]` - search
- `apt show [package]` - show
- `apt list` - list
- `apt list --installed` - list-installed
- `apt list --upgradeable` - list-upgradeable
- `apt edit-sources` - edit-sources
- `apt help [command]` - help

### brew

**Ecosystem**: macOS/Linux

**Description**: Homebrew package manager

**Commands**:

- `brew install [formula]` - install
- `brew uninstall [formula]` - uninstall
- `brew update` - update
- `brew upgrade [formula]` - upgrade
- `brew search [query]` - search
- `brew info [formula]` - info
- `brew list` - list
- `brew outdated` - outdated
- `brew doctor` - doctor
- `brew cleanup` - cleanup
- `brew link [formula]` - link
- `brew unlink [formula]` - unlink
- `brew config` - config
- `brew --version` - version
- `brew help [command]` - help

### bun

**Ecosystem**: JavaScript

**Description**: Fast JavaScript runtime, package manager, bundler, and test runner

**Commands**:

- `bun install` - install
- `bun add [package]` - add
- `bun remove [package]` - remove
- `bun update [package]` - update
- `bun outdated` - outdated
- `bun info [package]` - info
- `bun why [package]` - why
- `bun link [package]` - link
- `bun unlink` - unlink
- `bun publish` - publish
- `bun audit` - audit
- `bun init` - init
- `bun create [template]` - create
- `bun run [script]` - run
- `bun x [command]` - exec
- `bun test` - test
- `bun build [file]` - build
- `bun upgrade` - self-update
- `bun --help` - help

### bundler

**Ecosystem**: Ruby

**Description**: Ruby dependency management

**Commands**:

- `bundle install` - install
- `bundle add [gem]` - add
- `bundle remove [gem]` - remove
- `bundle update [gem]` - update
- `bundle show [gem]` - info
- `bundle list` - list
- `bundle outdated` - outdated
- `bundle init` - init
- `bundle exec [command]` - exec
- `bundle check` - check
- `bundle lock` - lock
- `bundle cache` - cache
- `bundle config` - config
- `bundle clean` - clean
- `bundle doctor` - doctor
- `bundle help [command]` - help

### cabal

**Ecosystem**: Haskell

**Description**: Haskell package build system

**Commands**:

- `cabal update` - update
- `cabal install [package]` - install
- `cabal build` - build
- `cabal clean` - clean
- `cabal test` - test
- `cabal run` - run
- `cabal repl` - repl
- `cabal init` - init
- `cabal configure` - configure
- `cabal list [package]` - list
- `cabal info [package]` - info
- `cabal fetch [package]` - fetch
- `cabal freeze` - freeze
- `cabal outdated` - outdated
- `cabal upload` - upload
- `cabal check` - check
- `cabal --help` - help

### cargo

**Ecosystem**: Rust

**Description**: Rust package manager

**Commands**:

- `cargo install [package]` - install
- `cargo uninstall [package]` - uninstall
- `cargo update [package]` - update
- `cargo search [query]` - search
- `cargo info [package]` - info
- `cargo init` - init
- `cargo new [name]` - new
- `cargo add [package]` - add
- `cargo remove [package]` - remove
- `cargo run` - run
- `cargo build` - build
- `cargo test` - test
- `cargo bench` - bench
- `cargo check` - check
- `cargo doc` - doc
- `cargo publish` - publish
- `cargo login` - login
- `cargo logout` - logout
- `cargo owner <subcommand>` - owner
- `cargo yank [package]` - yank
- `cargo clean` - clean
- `cargo tree` - tree
- `cargo fetch` - fetch
- `cargo package` - package
- `cargo fmt` - format
- `cargo version` - version
- `cargo config` - config
- `cargo help [command]` - help

### composer

**Ecosystem**: PHP

**Description**: Dependency Manager for PHP

**Commands**:

- `composer init` - init
- `composer install` - install
- `composer update [package]` - update
- `composer require [package]` - require
- `composer remove [package]` - remove
- `composer search [query]` - search
- `composer show [package]` - show
- `composer outdated` - outdated
- `composer global require [package]` - global
- `composer run-script [script]` - run-script
- `composer exec [command]` - exec
- `composer validate` - validate
- `composer status` - status
- `composer config [key] [value]` - config
- `composer clear-cache` - clear-cache
- `composer audit` - audit
- `composer licenses` - licenses
- `composer depends [package]` - depends
- `composer self-update` - self-update
- `composer diagnose` - diagnose
- `composer help [command]` - help

### conan

**Ecosystem**: C/C++

**Description**: C/C++ package manager

**Commands**:

- `conan install [package]` - install
- `conan create [path]` - create
- `conan upload [package]` - upload
- `conan remove [package]` - remove
- `conan search [query]` - search
- `conan info [package]` - info
- `conan build [path]` - build
- `conan test [path]` - test
- `conan config` - config
- `conan profile` - profile
- `conan lock` - lock
- `conan --help` - help

### conda

**Ecosystem**: Python

**Description**: Package, dependency and environment management

**Commands**:

- `conda install [package]` - install
- `conda remove [package]` - remove
- `conda update [package]` - update
- `conda upgrade [package]` - upgrade
- `conda search [query]` - search
- `conda info` - info
- `conda list` - list
- `conda create -n [env]` - create
- `conda activate [env]` - activate
- `conda deactivate` - deactivate
- `conda clean --all` - clean
- `conda config` - config
- `conda doctor` - doctor
- `conda --help` - help

### cpan

**Ecosystem**: Perl

**Description**: Comprehensive Perl Archive Network client

**Commands**:

- `cpan [module]` - install
- `cpan -U [module]` - remove
- `cpan -r` - update
- `cpan -a [query]` - search
- `cpan -D [module]` - info
- `cpan -h` - help

### cpanm

**Ecosystem**: Perl

**Description**: cpanminus - fast CPAN module installer

**Commands**:

- `cpanm [module]` - install
- `cpanm -U [module]` - uninstall
- `cpanm --info [module]` - info
- `cpanm --self-upgrade` - self-update
- `cpanm --help` - help

### deno

**Ecosystem**: JavaScript

**Description**: Modern JavaScript and TypeScript runtime

**Commands**:

- `deno add [package]` - add
- `deno install [package]` - install
- `deno uninstall [package]` - uninstall
- `deno remove [package]` - remove
- `deno outdated` - outdated
- `deno init` - init
- `deno run [file]` - run
- `deno task [name]` - task
- `deno test` - test
- `deno bench` - bench
- `deno compile [file]` - compile
- `deno compile [file]` - build
- `deno fmt` - fmt
- `deno fmt` - format
- `deno lint` - lint
- `deno check` - check
- `deno doc` - doc
- `deno info` - info
- `deno publish` - publish
- `deno clean` - clean
- `deno upgrade` - self-update
- `deno --help` - help

### dnf

**Ecosystem**: System (Fedora/RHEL)

**Description**: DNF package manager for RPM-based Linux distributions

**Commands**:

- `dnf install [package]` - install
- `dnf remove [package]` - remove
- `dnf upgrade` - upgrade
- `dnf update` - update
- `dnf search [query]` - search
- `dnf info [package]` - info
- `dnf list` - list
- `dnf list --installed` - list-installed
- `dnf check-upgrade` - check-upgrade
- `dnf autoremove` - autoremove
- `dnf clean all` - clean
- `dnf reinstall [package]` - reinstall
- `dnf downgrade [package]` - downgrade
- `dnf --help` - help

### docker

**Ecosystem**: Containers

**Description**: Container platform

**Commands**:

- `docker pull [image]` - pull
- `docker push [image]` - push
- `docker build [path]` - build
- `docker run [image]` - run
- `docker exec [container] [command]` - exec
- `docker ps` - ps
- `docker images` - images
- `docker search [query]` - search
- `docker login` - login
- `docker logout` - logout
- `docker rm [container]` - rm
- `docker rmi [image]` - rmi
- `docker stop [container]` - stop
- `docker start [container]` - start
- `docker restart [container]` - restart
- `docker logs [container]` - logs
- `docker inspect [object]` - inspect
- `docker version` - version
- `docker info` - info
- `docker help [command]` - help

### dotnet

**Ecosystem**: .NET

**Description**: .NET SDK and runtime

**Commands**:

- `dotnet new [template]` - new
- `dotnet restore` - restore
- `dotnet build` - build
- `dotnet run` - run
- `dotnet test` - test
- `dotnet publish` - publish
- `dotnet pack` - pack
- `dotnet clean` - clean
- `dotnet format` - format
- `dotnet add package [package]` - add
- `dotnet remove package [package]` - remove
- `dotnet list package` - list
- `dotnet tool` - tool
- `dotnet --help` - help

### gem

**Ecosystem**: Ruby

**Description**: RubyGems package manager

**Commands**:

- `gem install [package]` - install
- `gem uninstall [package]` - uninstall
- `gem update [package]` - update
- `gem update --system` - self-update
- `gem search [query]` - search
- `gem info [package]` - info
- `gem list` - list
- `gem outdated` - outdated
- `gem build [gemspec]` - build
- `gem push [gem]` - push
- `gem yank [package]` - yank
- `gem owner <subcommand>` - owner
- `gem signin` - signin
- `gem signout` - signout
- `gem fetch [package]` - fetch
- `gem cleanup` - cleanup
- `gem dependency [package]` - dependency
- `gem lock [package]` - lock
- `gem which [library]` - which
- `gem help [command]` - help

### go

**Ecosystem**: Go

**Description**: Go module management

**Commands**:

- `go install [package]` - install
- `go get [package]` - get
- `go build` - build
- `go run [file]` - run
- `go test` - test
- `go clean` - clean
- `go list` - list
- `go mod init [module]` - mod-init
- `go mod tidy` - mod-tidy
- `go mod download` - mod-download
- `go mod verify` - mod-verify
- `go mod graph` - mod-graph
- `go mod why [package]` - mod-why
- `go doc [package]` - doc
- `go fmt` - format
- `go vet` - vet
- `go version` - version
- `go help [command]` - help

### gradle

**Ecosystem**: Java

**Description**: Gradle build automation tool

**Commands**:

- `gradle build` - build
- `gradle clean` - clean
- `gradle test` - test
- `gradle tasks` - tasks
- `gradle dependencies` - dependencies
- `gradle init` - init
- `gradle run` - run
- `gradle --help` - help

### hatch

**Ecosystem**: Python

**Description**: Modern, extensible Python project manager

**Commands**:

- `hatch new [project]` - new
- `hatch init` - init
- `hatch build` - build
- `hatch publish` - publish
- `hatch run [command]` - run
- `hatch test` - test
- `hatch env` - env
- `hatch shell` - shell
- `hatch version` - version
- `hatch config` - config
- `hatch clean` - clean
- `hatch self update` - self-update
- `hatch --help` - help

### helm

**Ecosystem**: Kubernetes

**Description**: Kubernetes package manager

**Commands**:

- `helm install [name] [chart]` - install
- `helm uninstall [name]` - uninstall
- `helm upgrade [name] [chart]` - upgrade
- `helm search [query]` - search
- `helm list` - list
- `helm repo add [name] [url]` - repo-add
- `helm repo update` - repo-update
- `helm repo list` - repo-list
- `helm show [chart]` - show
- `helm --help` - help

### leiningen

**Ecosystem**: Clojure

**Description**: Clojure build and dependency management tool

**Commands**:

- `lein new [project]` - new
- `lein deps` - deps
- `lein run` - run
- `lein test` - test
- `lein repl` - repl
- `lein compile` - compile
- `lein clean` - clean
- `lein install` - install
- `lein deploy` - deploy
- `lein help` - help

### luarocks

**Ecosystem**: Lua

**Description**: Lua package manager

**Commands**:

- `luarocks install [rock]` - install
- `luarocks remove [rock]` - remove
- `luarocks search [query]` - search
- `luarocks list` - list
- `luarocks show [rock]` - show
- `luarocks build` - build
- `luarocks pack [rock]` - pack
- `luarocks upload [rock]` - upload
- `luarocks --help` - help

### mamba

**Ecosystem**: Python

**Description**: Fast drop-in replacement for conda

**Commands**:

- `mamba install [package]` - install
- `mamba remove [package]` - remove
- `mamba update [package]` - update
- `mamba search [query]` - search
- `mamba list` - list
- `mamba create -n [env]` - create
- `mamba clean --all` - clean
- `mamba info` - info
- `mamba --help` - help

### maven

**Ecosystem**: Java

**Description**: Apache Maven project management tool

**Commands**:

- `mvn install` - install
- `mvn clean` - clean
- `mvn compile` - compile
- `mvn test` - test
- `mvn package` - package
- `mvn deploy` - deploy
- `mvn verify` - verify
- `mvn --help` - help

### mix

**Ecosystem**: Elixir

**Description**: Elixir build tool

**Commands**:

- `mix new [project]` - new
- `mix deps.get` - deps.get
- `mix deps.update [dep]` - deps.update
- `mix deps.clean [dep]` - deps.clean
- `mix compile` - compile
- `mix run` - run
- `mix test` - test
- `mix format` - format
- `mix clean` - clean
- `mix release` - release
- `mix help [task]` - help

### nix

**Ecosystem**: System (NixOS/Cross-platform)

**Description**: Reproducible and declarative package manager

**Commands**:

- `nix search [query]` - search
- `nix profile install [package]` - install
- `nix profile remove [package]` - remove
- `nix profile list` - list
- `nix profile upgrade` - upgrade
- `nix build` - build
- `nix run [package]` - run
- `nix develop` - develop
- `nix fmt` - format
- `nix --help` - help

### npm

**Ecosystem**: JavaScript

**Description**: Node Package Manager

**Commands**:

- `npm install [package]` - install
- `npm uninstall [package]` - uninstall
- `npm update [package]` - update
- `npm search [query]` - search
- `npm info [package]` - info
- `npm list` - list
- `npm outdated` - outdated
- `npm init` - init
- `npm run [script]` - run
- `npx [command]` - exec
- `npm test` - test
- `npm publish` - publish
- `npm login` - login
- `npm logout` - logout
- `npm owner <subcommand>` - owner
- `npm link [package]` - link
- `npm unlink [package]` - unlink
- `npm config <subcommand>` - config
- `npm cache <subcommand>` - cache
- `npm audit` - audit
- `npm version <level>` - version
- `npm pack` - pack
- `npm help [command]` - help

### nuget

**Ecosystem**: .NET

**Description**: NuGet package manager for .NET

**Commands**:

- `dotnet nuget add source [url]` - add
- `dotnet nuget remove source [name]` - remove
- `dotnet nuget list source` - list
- `dotnet nuget enable source [name]` - enable
- `dotnet nuget disable source [name]` - disable
- `dotnet nuget push [package]` - push
- `dotnet nuget delete [package]` - delete
- `dotnet nuget locals all --clear` - locals
- `dotnet nuget why [package]` - why
- `dotnet nuget --help` - help

### opam

**Ecosystem**: OCaml

**Description**: OCaml package manager

**Commands**:

- `opam install [package]` - install
- `opam remove [package]` - remove
- `opam update` - update
- `opam upgrade` - upgrade
- `opam list` - list
- `opam search [query]` - search
- `opam show [package]` - show
- `opam info [package]` - info
- `opam init` - init
- `opam clean` - clean
- `opam config` - config
- `opam exec [command]` - exec
- `opam --help` - help

### pacman

**Ecosystem**: System (Arch Linux)

**Description**: Pacman package manager for Arch Linux

**Commands**:

- `pacman -S [package]` - install
- `pacman -R [package]` - remove
- `pacman -Sy` - update
- `pacman -Syu` - upgrade
- `pacman -Ss [query]` - search
- `pacman -Si [package]` - info
- `pacman -Q` - list
- `pacman -Qe` - list-installed
- `pacman -Sc` - clean
- `pacman --help` - help

### pdm

**Ecosystem**: Python

**Description**: Modern Python package manager with PEP 582 support

**Commands**:

- `pdm add [package]` - add
- `pdm remove [package]` - remove
- `pdm install` - install
- `pdm update [package]` - update
- `pdm list` - list
- `pdm show [package]` - show
- `pdm outdated` - outdated
- `pdm search [query]` - search
- `pdm lock` - lock
- `pdm sync` - sync
- `pdm init` - init
- `pdm new [project]` - new
- `pdm build` - build
- `pdm publish` - publish
- `pdm run [script]` - run
- `pdm export` - export
- `pdm import` - import
- `pdm info` - info
- `pdm cache clear` - cache
- `pdm config` - config
- `pdm --help` - help

### pip

**Ecosystem**: Python

**Description**: Python package installer

**Commands**:

- `pip install [package]` - install
- `pip uninstall [package]` - uninstall
- `pip search [query]` - search
- `pip show [package]` - info
- `pip list` - list
- `pip list --outdated` - outdated
- `pip freeze` - freeze
- `pip download [package]` - download
- `pip check` - check
- `pip config <subcommand>` - config
- `pip cache <subcommand>` - cache
- `pip hash [file]` - hash
- `pip inspect` - inspect
- `pip help [command]` - help

### pipenv

**Ecosystem**: Python

**Description**: Python development workflow tool

**Commands**:

- `pipenv install [package]` - install
- `pipenv uninstall [package]` - uninstall
- `pipenv update [package]` - update
- `pipenv lock` - lock
- `pipenv check` - check
- `pipenv graph` - graph
- `pipenv run [command]` - run
- `pipenv shell` - shell
- `pipenv clean` - clean
- `pipenv --help` - help

### pnpm

**Ecosystem**: JavaScript

**Description**: Fast, disk space efficient package manager

**Commands**:

- `pnpm add [package]` - install
- `pnpm remove [package]` - uninstall
- `pnpm update [package]` - update
- `pnpm search [query]` - search
- `pnpm view [package]` - info
- `pnpm list` - list
- `pnpm outdated` - outdated
- `pnpm init` - init
- `pnpm run [script]` - run
- `pnpm exec [command]` - exec
- `pnpm test` - test
- `pnpm publish` - publish
- `pnpm login` - login
- `pnpm logout` - logout
- `pnpm link [package]` - link
- `pnpm unlink [package]` - unlink
- `pnpm config <subcommand>` - config
- `pnpm audit` - audit
- `pnpm licenses` - licenses
- `pnpm why [package]` - why
- `pnpm help [command]` - help

### podman

**Ecosystem**: Containers

**Description**: Daemonless container engine

**Commands**:

- `podman pull [image]` - pull
- `podman push [image]` - push
- `podman build [path]` - build
- `podman run [image]` - run
- `podman exec [container] [command]` - exec
- `podman ps` - ps
- `podman images` - images
- `podman search [query]` - search
- `podman login` - login
- `podman logout` - logout
- `podman rm [container]` - rm
- `podman rmi [image]` - rmi
- `podman stop [container]` - stop
- `podman start [container]` - start
- `podman restart [container]` - restart
- `podman logs [container]` - logs
- `podman inspect [object]` - inspect
- `podman version` - version
- `podman info` - info
- `podman --help` - help

### poetry

**Ecosystem**: Python

**Description**: Python dependency management and packaging

**Commands**:

- `poetry install` - install
- `poetry add [package]` - add
- `poetry remove [package]` - remove
- `poetry update [package]` - update
- `poetry show [package]` - show
- `poetry search [query]` - search
- `poetry init` - init
- `poetry new [project]` - new
- `poetry run [command]` - run
- `poetry build` - build
- `poetry publish` - publish
- `poetry lock` - lock
- `poetry check` - check
- `poetry config` - config
- `poetry cache clear` - cache
- `poetry self update` - self-update
- `poetry version` - version
- `poetry help [command]` - help

### pub

**Ecosystem**: Dart

**Description**: Dart package manager

**Commands**:

- `dart pub get` - get
- `dart pub add [package]` - add
- `dart pub remove [package]` - remove
- `dart pub upgrade` - upgrade
- `dart pub downgrade` - downgrade
- `dart pub outdated` - outdated
- `dart pub deps` - deps
- `dart pub publish` - publish
- `dart pub login` - login
- `dart pub logout` - logout
- `dart pub cache` - cache
- `dart pub global` - global
- `dart pub --help` - help

### rbenv

**Ecosystem**: Ruby

**Description**: Ruby version manager

**Commands**:

- `rbenv install [version]` - install
- `rbenv uninstall [version]` - uninstall
- `rbenv versions` - versions
- `rbenv version` - version
- `rbenv global [version]` - global
- `rbenv local [version]` - local
- `rbenv shell [version]` - shell
- `rbenv rehash` - rehash
- `rbenv which [command]` - which
- `rbenv whence [command]` - whence
- `rbenv help [command]` - help

### rebar3

**Ecosystem**: Erlang

**Description**: Erlang build tool and package manager

**Commands**:

- `rebar3 new [template] [name]` - new
- `rebar3 compile` - compile
- `rebar3 clean` - clean
- `rebar3 test` - test
- `rebar3 release` - release
- `rebar3 deps` - deps
- `rebar3 get-deps` - get-deps
- `rebar3 update` - update
- `rebar3 upgrade` - upgrade
- `rebar3 tree` - tree
- `rebar3 unlock` - unlock
- `rebar3 shell` - shell
- `rebar3 help` - help

### rustup

**Ecosystem**: Rust

**Description**: Rust toolchain installer

**Commands**:

- `rustup toolchain install [toolchain]` - install
- `rustup toolchain uninstall [toolchain]` - uninstall
- `rustup update` - update
- `rustup self update` - self-update
- `rustup default [toolchain]` - default
- `rustup toolchain list` - list
- `rustup show` - show
- `rustup check` - check
- `rustup component add [component]` - component-add
- `rustup component remove [component]` - component-remove
- `rustup component list` - component-list
- `rustup target add [target]` - target-add
- `rustup target remove [target]` - target-remove
- `rustup target list` - target-list
- `rustup doc` - doc
- `rustup help [command]` - help

### stack

**Ecosystem**: Haskell

**Description**: Cross-platform build tool for Haskell

**Commands**:

- `stack install [package]` - install
- `stack build` - build
- `stack test` - test
- `stack run` - run
- `stack clean` - clean
- `stack update` - update
- `stack init` - init
- `stack new [project]` - new
- `stack exec [command]` - exec
- `stack --help` - help

### terraform

**Ecosystem**: Infrastructure

**Description**: Infrastructure as Code tool

**Commands**:

- `terraform init` - init
- `terraform plan` - plan
- `terraform apply` - apply
- `terraform destroy` - destroy
- `terraform validate` - validate
- `terraform fmt` - fmt
- `terraform fmt` - format
- `terraform providers` - providers
- `terraform --help` - help

### uv

**Ecosystem**: Python

**Description**: An extremely fast Python package manager

**Commands**:

- `uv add [package]` - add
- `uv remove [package]` - remove
- `uv sync` - sync
- `uv lock` - lock
- `uv pip install [package]` - install
- `uv pip uninstall [package]` - uninstall
- `uv pip list` - list
- `uv pip show [package]` - show
- `uv tree` - tree
- `uv init` - init
- `uv run [command]` - run
- `uv build` - build
- `uv publish` - publish
- `uv venv` - venv
- `uv python` - python
- `uv tool` - tool
- `uv cache` - cache
- `uv version` - version
- `uv format` - format
- `uv export` - export
- `uv help [command]` - help

### yarn

**Ecosystem**: JavaScript

**Description**: Fast, reliable, and secure dependency management

**Commands**:

- `yarn add [package]` - install
- `yarn remove [package]` - uninstall
- `yarn upgrade [package]` - update
- `yarn info [package]` - search
- `yarn info [package]` - info
- `yarn list` - list
- `yarn outdated` - outdated
- `yarn init` - init
- `yarn run [script]` - run
- `yarn exec [command]` - exec
- `yarn test` - test
- `yarn publish` - publish
- `yarn login` - login
- `yarn logout` - logout
- `yarn owner <subcommand>` - owner
- `yarn link` - link
- `yarn unlink` - unlink
- `yarn config <subcommand>` - config
- `yarn cache clean` - cache
- `yarn audit` - audit
- `yarn version` - version
- `yarn why [package]` - why
- `yarn workspaces` - workspaces
- `yarn help [command]` - help

### yum

**Ecosystem**: System (RHEL/CentOS)

**Description**: Yellowdog Updater Modified package manager

**Commands**:

- `yum install [package]` - install
- `yum remove [package]` - remove
- `yum update [package]` - update
- `yum upgrade` - upgrade
- `yum search [query]` - search
- `yum info [package]` - info
- `yum list` - list
- `yum list installed` - list-installed
- `yum check-update` - check-update
- `yum clean all` - clean
- `yum --help` - help

### zypper

**Ecosystem**: System (openSUSE)

**Description**: Command-line package manager for openSUSE

**Commands**:

- `zypper install [package]` - install
- `zypper remove [package]` - remove
- `zypper update` - update
- `zypper upgrade` - upgrade
- `zypper search [query]` - search
- `zypper info [package]` - info
- `zypper list-updates` - list
- `zypper clean` - clean
- `zypper --help` - help

