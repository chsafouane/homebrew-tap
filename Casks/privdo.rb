cask "privdo" do
  arch arm: "arm64", intel: "x64"

  version "1.0.7"
  sha256 arm:   "5eba359059f5767749e329112465743954b489e1783a6b0a413fdec7ad6d7ec2",
         intel: "803802f878729ee57923e7eaf87b0a3e74080e6b71ce59286f2c9bd8762300f6"

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
