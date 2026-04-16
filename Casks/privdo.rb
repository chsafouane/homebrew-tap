cask "privdo" do
  arch arm: "arm64", intel: "x64"

  version "1.0.3"
  sha256 arm:   "85f77a013e358b3b45d96dba243920e1733f962108dd140d8322c43282104678",
         intel: "24520ab942c59d9e7475720f635451a25e26bdf6f5b97006fb5a36d5b6daab51"

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
