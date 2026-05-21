cask "keybored" do
  version "1.0.0"
  sha256 "d3b32d6afd1e9c2149ee20116f5c040ec00dabfc4d9710e6b5d582658213e06f"

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
