class Ocgo < Formula
  desc "Run Claude Code through an OpenCode Go-compatible Anthropic proxy"
  homepage "https://github.com/emanuelcasco/ocgo"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/emanuelcasco/ocgo/releases/download/v0.4.1/ocgo_0.4.1_darwin_arm64.tar.gz"
      sha256 "21f015b6dbc38871b69c9c81db86c692817867bea47cf70207f9df43579a0329"
    else
      url "https://github.com/emanuelcasco/ocgo/releases/download/v0.4.1/ocgo_0.4.1_darwin_x86_64.tar.gz"
      sha256 "e1d6eb42c67fa892483850fdabd3146a7429b25ebe7178b974a9049ec9c90bcd"
    end
  end

  def install
    bin.install "ocgo"
  end

  test do
    system "#{bin}/ocgo", "--help"
  end
end
