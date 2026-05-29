class Ocgo < Formula
  desc "Run Claude Code through an OpenCode Go-compatible Anthropic proxy"
  homepage "https://github.com/emanuelcasco/ocgo"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/emanuelcasco/ocgo/releases/download/v0.3.1/ocgo_0.3.1_darwin_arm64.tar.gz"
      sha256 "f0d05e99cc45ad3de25484dc3e5d71532d43c7658fb968c68b266b76d45d7def"
    else
      url "https://github.com/emanuelcasco/ocgo/releases/download/v0.3.1/ocgo_0.3.1_darwin_x86_64.tar.gz"
      sha256 "1116fe8b1a30f74ebc349785d0ca4ec24451b7b44b73750b8b3acce71799dcc8"
    end
  end

  def install
    bin.install "ocgo"
  end

  test do
    system "#{bin}/ocgo", "--help"
  end
end
