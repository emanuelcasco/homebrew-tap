class Ocgo < Formula
  desc "Run Claude Code through an OpenCode Go-compatible Anthropic proxy"
  homepage "https://github.com/emanuelcasco/ocgo"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/emanuelcasco/ocgo/releases/download/v0.4.0/ocgo_0.4.0_darwin_arm64.tar.gz"
      sha256 "5512a586b2b904d01b73b0f67a7fdf9e89ad3c72a4d9c576000a4a5406e77f2d"
    else
      url "https://github.com/emanuelcasco/ocgo/releases/download/v0.4.0/ocgo_0.4.0_darwin_x86_64.tar.gz"
      sha256 "2b86072113f2062b1ddf8fe8cbb705033c45f22c692c4de50a5923a9523d7ce4"
    end
  end

  def install
    bin.install "ocgo"
  end

  test do
    system "#{bin}/ocgo", "--help"
  end
end
