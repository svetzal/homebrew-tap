# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.44.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.44.3/foundry-darwin-arm64.tar.gz"
      sha256 "cac3a8d266bfdcb1cf1b54f8c7229ded2df9070a28f3e04028c5a3d689ea2df1"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.44.3/foundry-darwin-x64.tar.gz"
      sha256 "211ba882b3f1475a03569bac47ea486193d97fa350d080c69730848d5bd1169b"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.44.3/foundry-linux-x64.tar.gz"
      sha256 "e0cfe192eab9a80bd1fd01df2d2cc7d846bc49ff33dd8e96d1f3fe14ca9b686a"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/foundry --version")
  end
end
