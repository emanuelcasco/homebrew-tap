class Ocgo < Formula
  desc "Run Claude Code through an OpenCode Go-compatible Anthropic proxy"
  homepage "https://github.com/emanuelcasco/ocgo"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/emanuelcasco/ocgo/releases/download/v0.1.0/ocgo_0.1.0_darwin_arm64.tar.gz"
      sha256 "65b4e52dfc413a43d68f9bedec22bb4a6c216b3a90017d4d8eff5f8745b573b6"
    else
      url "https://github.com/emanuelcasco/ocgo/releases/download/v0.1.0/ocgo_0.1.0_darwin_x86_64.tar.gz"
      sha256 "8a127042445f312ed41d71e56ff642b50d3154ccb9167455525a85739c2ef948"
    end
  end

  def install
    bin.install "ocgo"
  end

  test do
    system "#{bin}/ocgo", "--help"
  end
end
