class Ocgo < Formula
  desc "Run Claude Code through an OpenCode Go-compatible Anthropic proxy"
  homepage "https://github.com/emanuelcasco/ocgo"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/emanuelcasco/ocgo/releases/download/v0.2.1/ocgo_0.2.1_darwin_arm64.tar.gz"
      sha256 "f34ee147dd4e229644f961a8d1b0bacfed3e3fe2556211249f8eec987b095586"
    else
      url "https://github.com/emanuelcasco/ocgo/releases/download/v0.2.1/ocgo_0.2.1_darwin_x86_64.tar.gz"
      sha256 "57e2e7a42eaefb6803b09b3327d3328987b4586d942301613fe3e7ff3f709a9a"
    end
  end

  def install
    bin.install "ocgo"
  end

  test do
    system "#{bin}/ocgo", "--help"
  end
end
