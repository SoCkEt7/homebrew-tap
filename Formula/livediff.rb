class Livediff < Formula
  desc "Watch file diffs live in your terminal. Minimalist Rust TUI companion to git diff"
  homepage "https://socket7.github.io/Livediff/"
  version "3.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/SoCkEt7/Livediff/releases/download/v3.2.0/livediff-v3.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "000962cee53fcffb7092fdb7beb58edca7ef3134b7a4dd81c544ad5759fbcf9f"
    else
      url "https://github.com/SoCkEt7/Livediff/releases/download/v3.2.0/livediff-v3.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "f950fd380b4a91632900b37d6377adf65475522ba49aeadeb60dd6e812ba3f26"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/SoCkEt7/Livediff/releases/download/v3.2.0/livediff-v3.2.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e6b9fa7945952c4c16306d16b07825ee5af3a0565c1b78d077506ddd377e91c6"
    end
  end

  def install
    bin.install "livediff"
  end

  test do
    system "#{bin}/livediff", "--version"
  end
end
