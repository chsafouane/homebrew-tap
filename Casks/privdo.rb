cask "privdo" do
  arch arm: "arm64", intel: "x64"

  version "1.0.11"
  sha256 arm:   "d9b6f8ee4329bc0431e623e1b527ed709004cc4e763c9509e39bd5c0c3e1c561",
         intel: "d0ca37e8a885470a84901e3739ba4a8a00fd3d23c9fb5a69c45b3aac371f9750"

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
