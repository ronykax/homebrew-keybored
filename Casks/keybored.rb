cask "keybored" do
  version "1.0.2"
  sha256 "68c35fe040c9b3322e6cf8d3719c3e1a0997f6bab5fac19afa34ab178f5b85e0"

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
