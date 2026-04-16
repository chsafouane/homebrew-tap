cask "privdo" do
  arch arm: "arm64", intel: "x64"

  version "1.0.6"
  sha256 arm:   "45fa6b3249a154758c44522bbb72de7f902661cc9021c2a23fa6131bfea2c130",
         intel: "38756845b8f7160fc1cc2aa17681e9e934dea6bcc11e35dd4bbf2eda535848a7"

  url "https://github.com/chsafouane/privdo-private-todo-vault/releases/download/v#{version}/Privdo-#{version}-#{arch}.dmg"
  name "Privdo"
  desc "Private, encrypted todo list with AES-256 encryption and PIN-protected vault"
  homepage "https://chsafouane.github.io/privdo-private-todo-vault/"

  app "Privdo.app"

  zap trash: [
    "~/Library/Application Support/Privdo",
    "~/Library/Preferences/com.privdo.app.plist",
  ]
end
