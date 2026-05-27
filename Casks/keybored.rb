cask "keybored" do
  version "1.0.3"
  sha256 "630edc637e8a60728eec45bddc36c49fc000d242b31f7aa1ce8ae9a3a9aafa70"

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
