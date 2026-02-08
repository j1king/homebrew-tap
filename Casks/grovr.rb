cask "grovr" do
  version "0.7.2"
  sha256 "88dc3a15532d39c1ad2cded31c09f2ca6d79f865b854c3f5af18e2fada48323f"

  url "https://github.com/j1king/grovr/releases/download/v#{version}/Grovr_#{version}_aarch64.dmg"
  name "Grovr"
  desc "Desktop Git worktree manager"
  homepage "https://github.com/j1king/grovr"

  depends_on macos: ">= :catalina"
  depends_on arch: :arm64
  auto_updates true

  app "Grovr.app"

  zap trash: [
    "~/Library/Application Support/com.grovr.desktop",
    "~/Library/Preferences/com.grovr.desktop.plist",
    "~/Library/Saved Application State/com.grovr.desktop.savedState",
  ]
end
