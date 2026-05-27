cask "keybored" do
  version "1.0.3"
  sha256 "e4c8b0831d9ea4feff092758906eed1b44d59119d9527e4df90618ca3ed4d6b5"

  url "https://github.com/ronykax/keybored/releases/download/v#{version}/Keybored.zip"
  name "Keybored"
  desc "hotkeys for everything"
  homepage "https://github.com/ronykax/keybored"

  app "Keybored.app"

  # Automatically strips Gatekeeper quarantine after installation
  postflight do
    system_command "xattr",
                   args: ["-cr", "#{appdir}/Keybored.app"]
  end
end
