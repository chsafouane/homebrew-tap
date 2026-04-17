cask "privdo" do
  arch arm: "arm64", intel: "x64"

  version "1.0.17"
  sha256 arm:   "0a8ed842ab2b5f4ed38be51d4f58b85dc43f8f24949b8c6b7c11de3fc1558b54",
         intel: "d65a40503e02a7a10f79c5e6faa18fae8d0ecf99561e0766f73f73d703a961d7"

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
