class Ocgo < Formula
  desc "Run Claude Code through an OpenCode Go-compatible Anthropic proxy"
  homepage "https://github.com/emanuelcasco/ocgo"
  version "0.2.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/emanuelcasco/ocgo/releases/download/v0.2.4/ocgo_0.2.4_darwin_arm64.tar.gz"
      sha256 "b385a18f597c7e5a7169a6db944ba2dd758bdbe43b4edc7da364492ca8029cab"
    else
      url "https://github.com/emanuelcasco/ocgo/releases/download/v0.2.4/ocgo_0.2.4_darwin_x86_64.tar.gz"
      sha256 "0b514b64f1998a5a7a35f3e051d03b5fc7014e380e76d35c12fac7cbdcb218dd"
    end
  end

  def install
    bin.install "ocgo"
  end

  test do
    system "#{bin}/ocgo", "--help"
  end
end
