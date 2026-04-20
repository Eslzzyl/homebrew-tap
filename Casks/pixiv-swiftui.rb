cask "pixiv-swiftui" do
  version "v0.13.0"

  if Hardware::CPU.arm?
    sha256 "8c6c65ffb2417e4c38ba3075e6007ec7f9da29953a3006a0ce9d54d522b88b2e"
    url "https://github.com/Eslzzyl/Pixiv-SwiftUI/releases/download/v#{version}/Pixiv-SwiftUI-arm64.dmg"
  elsif Hardware::CPU.intel?
    sha256 "7fc14da559746a2d8ba08277cf2aa2b8f00239e9e5b2ac0e21518cf0af6b8c0b"
    url "https://github.com/Eslzzyl/Pixiv-SwiftUI/releases/download/v#{version}/Pixiv-SwiftUI-x86_64.dmg"
  end

  name "Pixiv-SwiftUI"
  desc "A SwiftUI-based Pixiv third-party client"
  homepage "https://github.com/Eslzzyl/Pixiv-SwiftUI"

  app "Pixiv-SwiftUI.app"

  zap trash: "~/Library/Application Support/com.pixiv.swiftui"
end
