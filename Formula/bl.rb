# typed: false
# frozen_string_literal: true

# Homebrew formula for the Baselayer CLI (bl)
# Tap: baselayer-id/tap
# Install: brew install baselayer-id/tap/bl
class Bl < Formula
  desc "Terminal interface to your Baselayer knowledge vault"
  homepage "https://baselayer.id"
  version "0.1.0-rc2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/baselayer-id/baselayer/releases/download/cli-v#{version}/bl-aarch64-apple-darwin.tar.gz"
      sha256 "177162c1a25ccd8df7a50b4aa80aa0d7b01b0fb97152b7b6363724e46d270100"
    end

    on_intel do
      url "https://github.com/baselayer-id/baselayer/releases/download/cli-v#{version}/bl-x86_64-apple-darwin.tar.gz"
      sha256 "06851454869a7dd2610571f2aff000634c77d68b7160967c210c3c2cd82d43f8"
    end
  end

  def install
    bin.install "bl"
  end

  test do
    assert_match "bl #{version}", shell_output("#{bin}/bl --version")
  end
end
