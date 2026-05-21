cask "keybored" do
  version "1.0.1"
  sha256 "8e089420ef53bf4db570e9e1dcd4bc2b70bc2e8ea91120cec649ef40fa235e28"

  url "https://github.com/ronykax/keybored/releases/download/v#{version}/Keybored.zip"
  name "Keybored"
  desc "bind commands to hotkeys"
  homepage "https://github.com/ronykax/keybored"

  app "Keybored.app"

  # Automatically strips Gatekeeper quarantine after installation
  postflight do
    system_command "xattr",
                   args: ["-cr", "#{appdir}/Keybored.app"]
  end
end
