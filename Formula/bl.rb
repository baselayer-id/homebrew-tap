# typed: false
# frozen_string_literal: true

# Homebrew formula for the Baselayer CLI (bl)
# Tap: baselayer-id/tap
# Install: brew install baselayer-id/tap/bl
class Bl < Formula
  desc "Terminal interface to your Baselayer knowledge vault"
  homepage "https://github.com/baselayer-id/bl"
  version "0.1.0-rc6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/baselayer-id/bl/releases/download/v#{version}/bl-aarch64-apple-darwin.tar.gz"
      sha256 "9ca431cc513f4d5e62724b8049eeac25f81faffc1d2351478b5e27199cc9e7eb"
    end

    on_intel do
      url "https://github.com/baselayer-id/bl/releases/download/v#{version}/bl-x86_64-apple-darwin.tar.gz"
      sha256 "bb9180be9c1f2638c2f3b03ef1854d3dfd7cd81dfe1d3adf8fda3947a1d030b7"
    end
  end

  def install
    bin.install "bl"
  end

  test do
    assert_match "bl #{version}", shell_output("#{bin}/bl --version")
  end
end
