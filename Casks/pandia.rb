cask "pandia" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.7"
  sha256 arm:   "1c2c18a0f8e61090db1cb302d0bb2c0d4756cfa9ab36a3dd2fcd6fae028590ea",
         intel: "bbebace9a69f71aa26fe2222dabde34b4c35e529b380e465563dd794a4edbc48"

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
