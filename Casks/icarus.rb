cask "icarus" do
  # Written by the release workflow in frbarbre/icarus on every stable release; edit it there.
  version "0.1.0"
  sha256 "a6181a45109391aee6f0158cc311bd50b82129310059af840a24d8fa1740e046"

  url "https://github.com/frbarbre/icarus/releases/download/v#{version}/Icarus-#{version}-macos-aarch64.zip"
  name "Icarus"
  desc "Native workspace for running coding agents in parallel git worktrees"
  homepage "https://github.com/frbarbre/icarus"

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Icarus.app"
  binary "#{appdir}/Icarus.app/Contents/MacOS/icarus"
  binary "#{appdir}/Icarus.app/Contents/MacOS/icarus-server"

  zap trash: [
    "~/.config/icarus",
    "~/.icarus",
    "~/.local/state/Icarus",
    "~/Library/Application Support/Icarus",
    "~/Library/Caches/Icarus",
    "~/Library/HTTPStorages/dev.icarus.app",
    "~/Library/LaunchAgents/dev.icarus.server.plist",
    "~/Library/Logs/Icarus",
    "~/Library/Preferences/dev.icarus.app.plist",
    "~/Library/Saved Application State/dev.icarus.app.savedState",
  ]
end
