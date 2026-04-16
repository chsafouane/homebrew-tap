cask "privdo" do
  arch arm: "arm64", intel: "x64"

  version "1.0.12"
  sha256 arm:   "3a1c1626ea063a82c5bb3e18ad4dabdbb1c63f8810183e91eb88949b68472c8c",
         intel: "08d580eb35e7c7f4812ca3994fb900b7ae8027bbc54fa85f97f8e3881d6da0d8"

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
