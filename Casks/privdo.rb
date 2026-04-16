cask "privdo" do
  arch arm: "arm64", intel: "x64"

  version "1.0.13"
  sha256 arm:   "4ca9ed3a1869daa6bedc09139e62319577820c9f33d5549792334c6521a298ee",
         intel: "870e005f9fcb4b67b4a87cdbde2a10207ac4b3bf432cbd607c6c24559029204c"

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
