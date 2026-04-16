cask "privdo" do
  arch arm: "arm64", intel: "x64"

  version "1.0.9"
  sha256 arm:   "707eb63ef24170c4b37668f56139092d30248cf128d5875e45d8a6aed70199eb",
         intel: "66e298ddf295768e0dea17ceb4695b452aa0f340a07e63fda17248d95d96c843"

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
