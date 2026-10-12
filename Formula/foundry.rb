# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.48.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.48.0/foundry-darwin-arm64.tar.gz"
      sha256 "b301fb0e0957487aefa4be0a24493cdc67552072317bba8a485c5ba9401abab6"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.48.0/foundry-darwin-x64.tar.gz"
      sha256 "2115253ac6773e58dfe12d66763427cec22105d86587bee3822df1eea2d2f7bb"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.48.0/foundry-linux-x64.tar.gz"
      sha256 "fa47edea526a470fde715898d90ded6a051073ce9b1d497c8d0485d5fc07048c"

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
