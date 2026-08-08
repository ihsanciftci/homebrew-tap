# Dataglot Homebrew Tap

Homebrew formulae for [Dataglot](https://github.com/peakacom/dataglot-harness) —
the Rust-native federated SQL engine with plan-time governance.

## Install

```sh
brew install peakacom/tap/dataglot
```

or

```sh
brew tap peakacom/tap
brew install dataglot
```

Prebuilt binaries are provided for macOS (arm64 / x86_64) and Linux
(arm64 / x86_64), resolved from the [dataglot-harness GitHub Releases](https://github.com/peakacom/dataglot-harness/releases).

## Publishing a new version

Each Dataglot release renders `dataglot.rb` (version + per-artifact sha256s)
and attaches it as a release asset. To publish it here, copy that file to
`Formula/dataglot.rb` and commit. See `docs/install.md` in the main repo.
