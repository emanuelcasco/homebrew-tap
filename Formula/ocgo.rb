class Ocgo < Formula
  desc "Run Claude Code through an OpenCode Go-compatible Anthropic proxy"
  homepage "https://github.com/emanuelcasco/ocgo"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/emanuelcasco/ocgo/releases/download/v0.2.0/ocgo_0.2.0_darwin_arm64.tar.gz"
      sha256 "3b1baa263f89f0500bfbb740a50617fc7c6618963a8d728e0491cab8f54bbe83"
    else
      url "https://github.com/emanuelcasco/ocgo/releases/download/v0.2.0/ocgo_0.2.0_darwin_x86_64.tar.gz"
      sha256 "fb0a0b8d9aa6cab28130a43264e9b543be847f503d3cf514dde35142e1e12012"
    end
  end

  def install
    bin.install "ocgo"
  end

  test do
    system "#{bin}/ocgo", "--help"
  end
end
