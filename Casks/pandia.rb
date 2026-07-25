cask "pandia" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.4"
  sha256 arm:   "09d8310b58a31f95b25a99bffa3e041f322fa48b924ffaa7043cbe8ad7810495",
         intel: "665b75c17d98ef179722761169b9a5ebbf6c57b56f36723ede3747f2ed695c0e"

  url "https://github.com/hendurhance/pandia/releases/download/v#{version}/Pandia_#{version}_#{arch}.dmg"
  name "Pandia"
  desc "Cross-platform desktop JSON IDE"
  homepage "https://github.com/hendurhance/pandia"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :catalina

  app "Pandia.app"

  zap trash: [
    "~/Library/Application Support/com.pandia.ide",
    "~/Library/Caches/com.pandia.ide",
    "~/Library/HTTPStorages/com.pandia.ide",
    "~/Library/Preferences/com.pandia.ide.plist",
    "~/Library/Saved Application State/com.pandia.ide.savedState",
  ]
end
