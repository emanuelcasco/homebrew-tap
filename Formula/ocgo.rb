class Ocgo < Formula
  desc "Run Claude Code through an OpenCode Go-compatible Anthropic proxy"
  homepage "https://github.com/emanuelcasco/ocgo"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/emanuelcasco/ocgo/releases/download/v0.3.1/ocgo_0.3.1_darwin_arm64.tar.gz"
      sha256 "a02645f14574fb6464098f45fa50c824bdbb353af24abae88e0dcba9d42d823b"
    else
      url "https://github.com/emanuelcasco/ocgo/releases/download/v0.3.1/ocgo_0.3.1_darwin_x86_64.tar.gz"
      sha256 "e62511086c96b5c1d5e2e8d4305adeaf829620831c9efe8d4c2de41c7b5b4fa4"
    end
  end

  def install
    bin.install "ocgo"
  end

  test do
    system "#{bin}/ocgo", "--help"
  end
end
