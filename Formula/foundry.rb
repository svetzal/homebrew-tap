# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.41.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.41.0/foundry-darwin-arm64.tar.gz"
      sha256 "864a1d3979dac64cacedf499784e5147dc69ee1bd2473909a83227386b24b09c"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.41.0/foundry-darwin-x64.tar.gz"
      sha256 "c6c21578546fb64091437495664ee3793231dba42b6f4270f4d9e7b8032dc9fe"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.41.0/foundry-linux-x64.tar.gz"
      sha256 "a10c1c5b9af944757f49b83ebc9ae6034ac4ef5ea2ec22dffdaceab1c44cf774"

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
