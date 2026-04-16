cask "privdo" do
  arch arm: "arm64", intel: "x64"

  version "1.0.10"
  sha256 arm:   "845d6ac800d8178f018c6859f51aabb0398e1a1d1e45099269283d30ec70b73d",
         intel: "613e7dcead14d5ccf8c593f43600430c8e9a882937310817c6f05dabb04186e5"

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
