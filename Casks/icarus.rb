cask "icarus" do
  # Written by the release workflow in frbarbre/icarus on every stable release; edit it there.
  version "0.2.19"
  sha256 "bbd860264dfe3ae096a6191f686dcefadca1453410d0ebf7f0dce265599f91a7"

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
