cask "privdo" do
  arch arm: "arm64", intel: "x64"

  version "1.0.16"
  sha256 arm:   "53a82565677bcfe7e49cbb75f991028310f9646e3718c6d7ce04e71a0229f2da",
         intel: "dd90dd8699116e7c9eb8831a85069db58a52e51c665d9f4264cb04ee5f294842"

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
