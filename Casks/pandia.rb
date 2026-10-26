cask "pandia" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.8"
  sha256 arm:   "81aadff6dcf0c131efbc58dc0e6ae93aea7e01f913a33369dbf8e4d374dd75fa",
         intel: "ad45c691d9e1eed1864027c877f1d8512fc1e9765367d00e67b94196ca765778"

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
