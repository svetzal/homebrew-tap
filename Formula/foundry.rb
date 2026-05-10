# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.14.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.14.1/foundry-darwin-arm64.tar.gz"
      sha256 "cdf7ec3942c09058b24c125a619a1e64e0b0e4304c36fa5cf72bbc21f2a1d426"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.14.1/foundry-darwin-x64.tar.gz"
      sha256 "2fe369c27ff9c451cc04d3df92d2090496a7b93be2c88f66a42ed45ec7f51119"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.14.1/foundry-linux-x64.tar.gz"
      sha256 "232f8b1a0bc749349a8e4d4b7bdecbc29ce7472e39d10a4a20be6e9d398de917"

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
