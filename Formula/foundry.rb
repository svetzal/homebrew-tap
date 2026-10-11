# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.43.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.43.0/foundry-darwin-arm64.tar.gz"
      sha256 "61c041b9489fa92b02e6ac95c02cc976ff64ce87acb35820f060bf9840700e25"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.43.0/foundry-darwin-x64.tar.gz"
      sha256 "bf2218a9a8d213f16d06977fd251d7922fe94826b440de7b045f942bf5ab60b3"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.43.0/foundry-linux-x64.tar.gz"
      sha256 "828b78f7363646919ac00198ffa1c12b4f0a3046d4c59a956de25332155b176f"

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
