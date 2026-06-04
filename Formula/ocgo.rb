class Ocgo < Formula
  desc "Run Claude Code through an OpenCode Go-compatible Anthropic proxy"
  homepage "https://github.com/emanuelcasco/ocgo"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/emanuelcasco/ocgo/releases/download/v0.5.0/ocgo_0.5.0_darwin_arm64.tar.gz"
      sha256 "c32b3ae8ed2a172cb6dc1d0b2e03e99165926bb908ea081bc43ee6e1c9391d8c"
    else
      url "https://github.com/emanuelcasco/ocgo/releases/download/v0.5.0/ocgo_0.5.0_darwin_x86_64.tar.gz"
      sha256 "affa1460a184f54b761ddc93542e0b643b0832a92f2bdb186e31ae42521e8a57"
    end
  end

  def install
    bin.install "ocgo"
  end

  test do
    system "#{bin}/ocgo", "--help"
  end
end
