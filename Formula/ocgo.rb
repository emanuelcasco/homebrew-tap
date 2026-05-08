class Ocgo < Formula
  desc "Run Claude Code through an OpenCode Go-compatible Anthropic proxy"
  homepage "https://github.com/emanuelcasco/ocgo"
  version "0.2.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/emanuelcasco/ocgo/releases/download/v0.2.5/ocgo_0.2.5_darwin_arm64.tar.gz"
      sha256 "f93d0323775d0ee6af75707ac22c3702cf7725c2a5ada759ba75bc797859be5a"
    else
      url "https://github.com/emanuelcasco/ocgo/releases/download/v0.2.5/ocgo_0.2.5_darwin_x86_64.tar.gz"
      sha256 "0623d36a642d0e27538d35d4ae0ef4f9084d477b26d74bad30839f4bfe681ccd"
    end
  end

  def install
    bin.install "ocgo"
  end

  test do
    system "#{bin}/ocgo", "--help"
  end
end
