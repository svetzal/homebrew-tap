# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.38.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.38.3/foundry-darwin-arm64.tar.gz"
      sha256 "c625dc6be903c3f6bd4e197389a76e4a7d3267fa18ba4a07a83dd0c146d43ae2"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.38.3/foundry-darwin-x64.tar.gz"
      sha256 "ef41b8e78cba29c33a15a20f892df1f9604aa3d0c7ea203d6b594a54c8600653"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.38.3/foundry-linux-x64.tar.gz"
      sha256 "eb0ba6b7cd3dddbf8a1281a19a316c070406e8b694050a30a14ab818b5f4363d"

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
