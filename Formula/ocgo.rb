class Ocgo < Formula
  desc "Run Claude Code through an OpenCode Go-compatible Anthropic proxy"
  homepage "https://github.com/emanuelcasco/ocgo"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/emanuelcasco/ocgo/releases/download/v0.3.1/ocgo_0.3.1_darwin_arm64.tar.gz"
      sha256 "5c228a7d4b4b97cd5a9e1b3eddf4e5f0a4e5cd8d35873233eab364f50e531678"
    else
      url "https://github.com/emanuelcasco/ocgo/releases/download/v0.3.1/ocgo_0.3.1_darwin_x86_64.tar.gz"
      sha256 "64a1d3fde1007fef4df24ac5b06b362827d9f84e9f4eb55c6133d8143a60af46"
    end
  end

  def install
    bin.install "ocgo"
  end

  test do
    system "#{bin}/ocgo", "--help"
  end
end
