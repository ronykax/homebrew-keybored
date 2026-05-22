cask "keybored" do
  version "1.0.2"
  sha256 "79e664d54fc01677779c7b34561e0f64ad4a6f52df80064017fb509d5b5665c7"

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
