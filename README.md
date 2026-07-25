# hendurhance/homebrew-tap

Homebrew tap for [Pandia](https://github.com/hendurhance/pandia) — a cross-platform desktop JSON IDE.

## Install

```sh
brew tap hendurhance/tap
brew install --cask pandia
```

## Upgrade

```sh
brew update
brew upgrade --cask pandia
```

## Uninstall

```sh
brew uninstall --cask pandia
brew untap hendurhance/tap
```

## How the cask stays current

`.github/workflows/bump-cask.yml` checks the latest **published** release of
`hendurhance/pandia` once a day, and rewrites `Casks/pandia.rb` with the new
version and both architectures' checksums.

Draft releases are skipped on purpose — their assets are not downloadable, so a
cask built from one could not install. Publish the release first.

To bump immediately instead of waiting for the daily run: **Actions → Bump
Pandia cask → Run workflow**.
