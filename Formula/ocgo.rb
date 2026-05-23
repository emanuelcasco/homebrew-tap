class Ocgo < Formula
  desc "Run Claude Code through an OpenCode Go-compatible Anthropic proxy"
  homepage "https://github.com/emanuelcasco/ocgo"
  version "0.2.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/emanuelcasco/ocgo/releases/download/v0.2.7/ocgo_0.2.7_darwin_arm64.tar.gz"
      sha256 "46edf59b77be7f6466dc64447816722396f4517c099518a5d4bd46f5213befc0"
    else
      url "https://github.com/emanuelcasco/ocgo/releases/download/v0.2.7/ocgo_0.2.7_darwin_x86_64.tar.gz"
      sha256 "ebee8381af79a158a89b737b1d3117f16865d602e5188be83913abbfd9b65bf0"
    end
  end

  def install
    bin.install "ocgo"
  end

  test do
    system "#{bin}/ocgo", "--help"
  end
end
