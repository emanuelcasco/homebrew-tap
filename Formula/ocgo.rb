class Ocgo < Formula
  desc "Run Claude Code through an OpenCode Go-compatible Anthropic proxy"
  homepage "https://github.com/emanuelcasco/ocgo"
  version "0.2.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/emanuelcasco/ocgo/releases/download/v0.2.6/ocgo_0.2.6_darwin_arm64.tar.gz"
      sha256 "c13ff5b27ea5651d03942c443b5b4051035d5782d318758f703aae7c8f9bfa63"
    else
      url "https://github.com/emanuelcasco/ocgo/releases/download/v0.2.6/ocgo_0.2.6_darwin_x86_64.tar.gz"
      sha256 "6b01aca93805be3baf580e729624fcd4ca04eb02615337b3706cda6a4c599ae4"
    end
  end

  def install
    bin.install "ocgo"
  end

  test do
    system "#{bin}/ocgo", "--help"
  end
end
