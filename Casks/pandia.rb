cask "pandia" do
  arch arm: "aarch64", intel: "x64"

  version "1.0.5"
  sha256 arm:   "06941ef256e56affe4bc78f4ccf16aa344c9c87049ed71aa1c3331d9eb15c990",
         intel: "8bcc097fcc960426a722f42e3a463d3bbe3638de308285338b66cf33a473c873"

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
