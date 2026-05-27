class Ocgo < Formula
  desc "Run Claude Code through an OpenCode Go-compatible Anthropic proxy"
  homepage "https://github.com/emanuelcasco/ocgo"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/emanuelcasco/ocgo/releases/download/v0.3.0/ocgo_0.3.0_darwin_arm64.tar.gz"
      sha256 "8b6a7eef2574554a81605750c622737d0590e63d831e4faeafe32165f2ed4c88"
    else
      url "https://github.com/emanuelcasco/ocgo/releases/download/v0.3.0/ocgo_0.3.0_darwin_x86_64.tar.gz"
      sha256 "3477594c8d90428b6996e3081623e36de895f1c2d955d469a1020090e074ef55"
    end
  end

  def install
    bin.install "ocgo"
  end

  test do
    system "#{bin}/ocgo", "--help"
  end
end
