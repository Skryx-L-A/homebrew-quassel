# Homebrew tap for Quassel

[Quassel](https://github.com/Skryx-L-A/quassel) is free for personal use, source-available, fully offline
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

## License

Source-available under the [PolyForm Noncommercial License 1.0.0](LICENSE).

- **Free to use** for personal and other noncommercial purposes, for study and
  research, by educational, public and nonprofit institutions, and by individuals
  for their own work, including professional work as freelancer or employee.
  Organizations may evaluate the software for 60 days. Details:
  [ADDITIONAL-PERMISSIONS.md](ADDITIONAL-PERMISSIONS.md).
- **Commercial license required** for use by an organization, such as rolling it
  out to staff, operating it for others or building it into a product or service:
  [COMMERCIAL-LICENSE.md](COMMERCIAL-LICENSE.md).
- Versions up to the tag `last-agpl` remain available under AGPL-3.0-only.

Contributions: see [CONTRIBUTING.md](CONTRIBUTING.md).

This license covers the cask definition in this tap. Quassel itself is licensed
the same way, see the [main repository](https://github.com/Skryx-L-A/quassel).
