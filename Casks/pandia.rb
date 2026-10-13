cask "pandia" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.7"
  sha256 arm:   "3f0919196b02fe65aa30a7acc2e2e1932ba18536745fd41108cc72be0d6461c5",
         intel: "a4eb3b5b2e7b480dd2888021e13967055f823d5775044faa63660e07411c90fa"

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
