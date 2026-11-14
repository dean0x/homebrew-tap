# Homebrew Tap

Homebrew formulae for dean0x projects.

## Installation

```bash
brew tap dean0x/tap
```

## Trust (Homebrew 7 and later)

Homebrew 7 loads a formula from a third-party tap only after you trust it. Trust each formula that you install, one time:

```bash
brew trust --formula dean0x/tap/skim
brew trust --formula dean0x/tap/mino
brew trust --formula dean0x/tap/mars
```

Homebrew keeps the trust, so `brew upgrade` works after this step. An older Homebrew has no `brew trust` command. Skip this step there.

## Available Formulae

| Formula | Description |
|---------|-------------|
| [skim](Formula/skim.rb) | Smart code reader - streaming code transformation for AI agents |
| [mino](Formula/mino.rb) | Secure sandbox for AI coding agents using rootless containers |
| [mars](Formula/mars.rb) | Multi-repo workspace manager for Git repositories |

## Usage

```bash
# Install skim (Homebrew 7: run `brew trust --formula dean0x/tap/skim` first)
brew install dean0x/tap/skim

# Install mino
brew install dean0x/tap/mino

# Install mars
brew install dean0x/tap/mars

# Or install directly without tapping first
brew install dean0x/tap/skim
```
