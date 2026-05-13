# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.16.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.16.1/foundry-darwin-arm64.tar.gz"
      sha256 "ef6c1d2c001cb1ee02a168542d8ea9234d8e1d90431a81911656be1ef22b31e7"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.16.1/foundry-darwin-x64.tar.gz"
      sha256 "2b7c8afbe6a603ea470710474b12cd3108427452991d617c4ba5dd607aec5161"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.16.1/foundry-linux-x64.tar.gz"
      sha256 "d73625de6102ba2828f3493316786a75b78673dbb6fefd6e4fe5da3ed92bd237"

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
