class Tidev < Formula
  desc "A terminal-based AI coding agent"
  homepage "https://github.com/Eslzzyl/tidev"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Eslzzyl/tidev/releases/download/v#{version}/tidev-macos-arm64"
      # sha256: macos-arm64
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/Eslzzyl/tidev/releases/download/v#{version}/tidev-macos-x64"
      # sha256: macos-x64
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Eslzzyl/tidev/releases/download/v#{version}/tidev-linux-arm64"
      # sha256: linux-arm64
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/Eslzzyl/tidev/releases/download/v#{version}/tidev-linux-x64"
      # sha256: linux-x64
      sha256 "PLACEHOLDER"
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
