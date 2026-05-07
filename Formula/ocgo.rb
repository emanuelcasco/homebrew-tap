class Ocgo < Formula
  desc "Run Claude Code through an OpenCode Go-compatible Anthropic proxy"
  homepage "https://github.com/emanuelcasco/ocgo"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/emanuelcasco/ocgo/releases/download/v0.2.2/ocgo_0.2.2_darwin_arm64.tar.gz"
      sha256 "7665d5c0edd2e25177e782dfc3c83c5c5620a987dc3ef4b5db0f71c353668742"
    else
      url "https://github.com/emanuelcasco/ocgo/releases/download/v0.2.2/ocgo_0.2.2_darwin_x86_64.tar.gz"
      sha256 "3e25bce640c7129a8fd6f2448c8506fbe80329954ba4c70e37b11db1c4eb5c36"
    end
  end

  def install
    bin.install "ocgo"
  end

  test do
    system "#{bin}/ocgo", "--help"
  end
end
