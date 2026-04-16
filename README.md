# Baselayer Homebrew Tap

Homebrew formulae for Baselayer CLI tools.

## Install

```bash
brew install baselayer-id/tap/bl
```

Or tap first, then install:

```bash
brew tap baselayer-id/tap
brew install bl
```

## Formulae

- **`bl`** — Baselayer CLI. Terminal interface to your knowledge vault.

## Updating

Formulae are updated automatically by GitHub Actions when a new release is
tagged in the main [baselayer repo](https://github.com/baselayer-id/baselayer).
See `.github/workflows/update-formula.yml`.

## Manual update

```bash
./scripts/update-bl.sh 0.1.0
```
