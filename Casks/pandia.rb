cask "pandia" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.6"
  sha256 arm:   "393f629da4d222a948932820746b1ac8cf974f01aacccd5a19fa33e1d9db251c",
         intel: "7933d9c0a482c0be97c2aa84b49b6990969604688501cb7be6f8eb5f1a6d727f"

  url "https://github.com/hendurhance/pandia/releases/download/v#{version}/Pandia_#{version}_#{arch}.dmg"
  name "Pandia"
  desc "Cross-platform desktop JSON IDE"
  homepage "https://github.com/hendurhance/pandia"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Pandia.app"

  zap trash: [
    "~/Library/Application Support/com.pandia.ide",
    "~/Library/Caches/com.pandia.ide",
    "~/Library/HTTPStorages/com.pandia.ide",
    "~/Library/Preferences/com.pandia.ide.plist",
    "~/Library/Saved Application State/com.pandia.ide.savedState",
  ]
end
