class Ocgo < Formula
  desc "Run Claude Code through an OpenCode Go-compatible Anthropic proxy"
  homepage "https://github.com/emanuelcasco/ocgo"
  version "0.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/emanuelcasco/ocgo/releases/download/v0.3.2/ocgo_0.3.2_darwin_arm64.tar.gz"
      sha256 "ffe2193a1dd6e795383cab066dc5ab8a6956e1945f9090655a0fe473603db906"
    else
      url "https://github.com/emanuelcasco/ocgo/releases/download/v0.3.2/ocgo_0.3.2_darwin_x86_64.tar.gz"
      sha256 "2cd4a4607969545bbf8f6bf9ed449843e209fe507d172cd1c4770e88fcd0a7bb"
    end
  end

  def install
    bin.install "ocgo"
  end

  test do
    system "#{bin}/ocgo", "--help"
  end
end
