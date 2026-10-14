cask "quassel" do
  version "2.8.0"
  # SHA256 des veröffentlichten Release-Assets (nicht eines lokalen Builds).
  # Bei jedem Release neu setzen: scripts/build_mac_dmg.sh gibt sie aus, und sie
  # liegt als Quassel-macOS-arm64.dmg.sha256 am Release.
  sha256 "27f3d7ab681638d55ea4caa67aa79a8ee5b2d3417b6325208384f07458ba445e"

  url "https://github.com/Skryx-L-A/quassel/releases/download/v#{version}/Quassel-macOS-arm64.dmg"
  name "Quassel"
  desc "Fully local, system-wide voice typing (Metal-accelerated whisper.cpp)"
  homepage "https://github.com/Skryx-L-A/quassel"

  depends_on macos: :big_sur
  depends_on arch: :arm64

  # ffmpeg-Abhängigkeit NICHT aktivieren, solange die Messung läuft, ob die App
  # ffmpeg zur Laufzeit überhaupt noch braucht (parallele Untersuchung, Stand
  # 2026-07-28). Erst eintragen, wenn diese Messung "ja" ergibt:
  # depends_on formula: "ffmpeg"

  app "Quassel.app"

  # Selbstsigniert ("Quassel Dev"), nicht notarisiert (kein Apple-Developer-
  # Account) — ohne das entfernte Quarantäne-Flag würde Gatekeeper den ersten
  # Start blockieren.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Quassel.app"],
                   sudo: false
  end

  uninstall launchctl: "de.skryx.quassel",
            quit:      "de.skryx.quassel"

  zap trash: [
    "~/Library/Application Support/Quassel",
    "~/Library/LaunchAgents/de.skryx.quassel.plist",
    "~/Library/Logs/Quassel",
    "~/Library/Preferences/de.skryx.quassel.plist",
  ]
end
