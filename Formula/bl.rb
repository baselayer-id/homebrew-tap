# typed: false
# frozen_string_literal: true

# Homebrew formula for the Baselayer CLI (bl)
# Tap: baselayer-id/tap
# Install: brew install baselayer-id/tap/bl
class Bl < Formula
  desc "Terminal interface to your Baselayer knowledge vault"
  homepage "https://github.com/baselayer-id/bl"
  version "0.1.0-rc3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/baselayer-id/bl/releases/download/v#{version}/bl-aarch64-apple-darwin.tar.gz"
      sha256 "d1da42386c72fcf889b0c9bf1058f7dbfd413c94ea0495c51bf91d5fe4f04b18"
    end

    on_intel do
      url "https://github.com/baselayer-id/bl/releases/download/v#{version}/bl-x86_64-apple-darwin.tar.gz"
      sha256 "e6fb89a9c589502c218446253fbd52dfe58495990eb21ad3f34bb2d4be0b150c"
    end
  end

  def install
    bin.install "bl"
  end

  test do
    assert_match "bl #{version}", shell_output("#{bin}/bl --version")
  end
end
