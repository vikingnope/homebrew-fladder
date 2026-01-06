cask "fladder" do
  version "0.9.0"
  sha256 "60b337462c08bc9697b1ed2eb687bd4506ab320e3241daf536def06a6d998c85"

  url "https://github.com/DonutWare/Fladder/releases/download/v#{version}/Fladder-macOS-#{version}.dmg"
  name "Fladder"
  desc "Simple Jellyfin frontend built with Flutter"
  homepage "https://github.com/DonutWare/Fladder"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Fladder.app"

  zap trash: [
    "~/Library/Application Scripts/nl.jknaapen.fladder",
    "~/Library/Containers/nl.jknaapen.fladder",
  ]
end
