# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.39.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.39.7/foundry-darwin-arm64.tar.gz"
      sha256 "4f71e6867fe5b97b999b4d63a88a063c5a5b470d4de013ca998979254cb8f81c"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.39.7/foundry-darwin-x64.tar.gz"
      sha256 "33a5902907d24525d336a9998af0ee04eb049a631bf658c2ee94d98d85f916b4"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.39.7/foundry-linux-x64.tar.gz"
      sha256 "2c9929e578df0b5e31fbd519eecb0eab954e5ba2d57d7f9da30c4d507388b45d"

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
