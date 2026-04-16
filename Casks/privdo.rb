cask "privdo" do
  arch arm: "arm64", intel: "x64"

  version "1.0.14"
  sha256 arm:   "bead4f8eff4d724c2b792bdbed22001fb763ba8ecd14115d9d13dc9da762c003",
         intel: "a0620f2fc6835eaf9ec4212dfe7438e3b681d5e1936da56a2b95712a2e89f9a6"

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
