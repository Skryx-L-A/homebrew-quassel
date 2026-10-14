# Homebrew tap for Quassel

[Quassel](https://github.com/Skryx-L-A/quassel) is free software for fully offline
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

The cask here is copied by hand from
[`packaging/homebrew/Casks/quassel.rb`](https://github.com/Skryx-L-A/quassel/blob/main/packaging/homebrew/Casks/quassel.rb)
in the main repository with each release; file issues there.

## License

This tap is free software: you can redistribute it and/or modify it under the terms of the
GNU General Public License as published by the Free Software Foundation, either version 3 of
the License, or (at your option) any later version. See [LICENSE](LICENSE).

The cask installs the Quassel release DMG, which carries the license of that Quassel release.
Quassel itself is licensed under GPL-3.0-or-later, see the
[main repository](https://github.com/Skryx-L-A/quassel).

Earlier versions keep the license they were published under: the commit tagged `last-agpl` is
AGPL-3.0-only, and the commit tagged `last-polyform` is PolyForm Noncommercial 1.0.0.

Contributions: see [CONTRIBUTING.md](CONTRIBUTING.md).
