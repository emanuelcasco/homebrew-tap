class Ocgo < Formula
  desc "Run Claude Code through an OpenCode Go-compatible Anthropic proxy"
  homepage "https://github.com/emanuelcasco/ocgo"
  version "0.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/emanuelcasco/ocgo/releases/download/v0.2.3/ocgo_0.2.3_darwin_arm64.tar.gz"
      sha256 "e26c5096006cbe457628662e6df5c13327a27d8578bc725bd42c70a9fa20db56"
    else
      url "https://github.com/emanuelcasco/ocgo/releases/download/v0.2.3/ocgo_0.2.3_darwin_x86_64.tar.gz"
      sha256 "fdc464c7019a2b815ca6eec1ca44a628a65a602b9a9271137efd2101d39839a4"
    end
  end

  def install
    bin.install "ocgo"
  end

  test do
    system "#{bin}/ocgo", "--help"
  end
end
