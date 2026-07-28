# Homebrew tap for Quassel

[Quassel](https://github.com/Skryx-L-A/quassel) is free, open-source, fully offline
voice typing: hold a key, speak, release, and your words are typed wherever your
cursor is. Speech recognition runs locally via whisper.cpp — no cloud, no account,
no telemetry.

```bash
brew install --cask skryx-l-a/quassel/quassel
```

Apple Silicon only. The app is self-signed but not notarized; the cask clears the
quarantine flag, so there is no Gatekeeper dialog. On first launch macOS asks once
for **Microphone**, **Accessibility** and **Input Monitoring** — grant all three,
then restart Quassel.

The cask here is generated from
[`packaging/homebrew/Casks/quassel.rb`](https://github.com/Skryx-L-A/quassel/blob/main/packaging/homebrew/Casks/quassel.rb)
in the main repository; file issues there.
