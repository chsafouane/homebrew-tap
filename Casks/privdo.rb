cask "privdo" do
  arch arm: "arm64", intel: "x64"

  version "1.0.5"
  sha256 arm:   "e19dad7a781c394379d4f55bcd3da1d4385678876f59cc6abcee78a70812094c",
         intel: "fb118ce6a72cc96468dbd15796fee80b568438fe3cd728ee98a6d18e7cbf5429"

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
