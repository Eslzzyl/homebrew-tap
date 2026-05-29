class Tidev < Formula
  desc "A terminal-based AI coding agent"
  homepage "https://github.com/Eslzzyl/tidev"
  version "0.6.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Eslzzyl/tidev/releases/download/v#{version}/tidev-macos-arm64"
      # sha256: macos-arm64
      sha256 "866b3ffb3dbd521d22a8a2b005f921d0e336ca98f6cbe404d16ec70d8c6eeded"
    end
    on_intel do
      url "https://github.com/Eslzzyl/tidev/releases/download/v#{version}/tidev-macos-x64"
      # sha256: macos-x64
      sha256 "53243601ee3f953931251b3d3647517e14334b0cf62e203e2ad737021924d03f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Eslzzyl/tidev/releases/download/v#{version}/tidev-linux-arm64"
      # sha256: linux-arm64
      sha256 "759cecf07249d10a3117deb3f54a13354a11f063071185dd9e38cdac0badcf82"
    end
    on_intel do
      url "https://github.com/Eslzzyl/tidev/releases/download/v#{version}/tidev-linux-x64"
      # sha256: linux-x64
      sha256 "c3079a6a486e7a628ab201eaf661d89c7cc570f170ab7ec426f1c82f38328bd8"
    end
  end

  def install
    if OS.mac?
      if Hardware::CPU.arm?
        bin.install "tidev-macos-arm64" => "tidev"
      else
        bin.install "tidev-macos-x64" => "tidev"
      end
    elsif OS.linux?
      if Hardware::CPU.arm?
        bin.install "tidev-linux-arm64" => "tidev"
      else
        bin.install "tidev-linux-x64" => "tidev"
      end
    end
  end

  test do
    system "#{bin}/tidev", "--version"
  end
end
