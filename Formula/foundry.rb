# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.55.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.55.1/foundry-darwin-arm64.tar.gz"
      sha256 "83fc1b03b2b801c10a3cc49da6bf5f290cfa8449d4fc919074e96e05fedf91e2"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.55.1/foundry-darwin-x64.tar.gz"
      sha256 "07b48fd6d05df44bd520a0b9f2392076979afc385cbd5582a902d5537b2d734e"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.55.1/foundry-linux-x64.tar.gz"
      sha256 "c3da1ed2333e368926f108ce4bcbbc2a94c0784067303b3f6c4ae6adc05aacda"

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
