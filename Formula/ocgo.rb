class Ocgo < Formula
  desc "Run Claude Code through an OpenCode Go-compatible Anthropic proxy"
  homepage "https://github.com/emanuelcasco/ocgo"
  version "0.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/emanuelcasco/ocgo/releases/download/v0.3.2/ocgo_0.3.2_darwin_arm64.tar.gz"
      sha256 "361cd3fce644c54c28a7953c8d9d87a0390def0f14470ef07ca2fd71c1f3c20e"
    else
      url "https://github.com/emanuelcasco/ocgo/releases/download/v0.3.2/ocgo_0.3.2_darwin_x86_64.tar.gz"
      sha256 "47bc1a24d4ccfc0ca4ab3054888796ea26d6350369f7ee0fd06b0eb325938d9f"
    end
  end

  def install
    bin.install "ocgo"
  end

  test do
    system "#{bin}/ocgo", "--help"
  end
end
