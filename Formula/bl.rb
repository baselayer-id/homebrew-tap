# typed: false
# frozen_string_literal: true

# Homebrew formula for the Baselayer CLI (bl)
# Tap: baselayer-id/tap
# Install: brew install baselayer-id/tap/bl
class Bl < Formula
  desc "Terminal interface to your Baselayer knowledge vault"
  homepage "https://github.com/baselayer-id/bl"
  version "0.1.0-rc5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/baselayer-id/bl/releases/download/v#{version}/bl-aarch64-apple-darwin.tar.gz"
      sha256 "df47d38e42571c922324d219da2b756536106a50c3f28c338fd300e984cf604a"
    end

    on_intel do
      url "https://github.com/baselayer-id/bl/releases/download/v#{version}/bl-x86_64-apple-darwin.tar.gz"
      sha256 "fd0778de05d74b1a6df59e4682b5d0bc6c2cca221c5f7670bae44729ce34451b"
    end
  end

  def install
    bin.install "bl"
  end

  test do
    assert_match "bl #{version}", shell_output("#{bin}/bl --version")
  end
end
