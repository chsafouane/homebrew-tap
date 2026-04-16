cask "privdo" do
  arch arm: "arm64", intel: "x64"

  version "1.0.8"
  sha256 arm:   "91f73f3aeccd81bdde7d7935552a796535cd7ae7d01aa44add96d78fa0d91c2e",
         intel: "011f87bc72b57c82642ee2fbe7aac73a9c0da6a73c24ecf34c6a015c88e65b3e"

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
