# typed: false
# frozen_string_literal: true

# Homebrew formula for the Baselayer CLI (bl)
# Tap: baselayer-id/tap
# Install: brew install baselayer-id/tap/bl
class Bl < Formula
  desc "Terminal interface to your Baselayer knowledge vault"
  homepage "https://github.com/baselayer-id/bl"
  version "0.1.0-rc4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/baselayer-id/bl/releases/download/v#{version}/bl-aarch64-apple-darwin.tar.gz"
      sha256 "e586e978716c01dda17940991a5597d56f5aaa0637526db4a0d5317630600176"
    end

    on_intel do
      url "https://github.com/baselayer-id/bl/releases/download/v#{version}/bl-x86_64-apple-darwin.tar.gz"
      sha256 "261a856be9733047c33a099363d28260e6941b730983595870862c4fb21c90eb"
    end
  end

  def install
    bin.install "bl"
  end

  test do
    assert_match "bl #{version}", shell_output("#{bin}/bl --version")
  end
end
