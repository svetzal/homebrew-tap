# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.39.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.39.6/foundry-darwin-arm64.tar.gz"
      sha256 "c4a4ad1bdafa881eb79a6147bad7ae034d03558ae91a2badb02a7345e6e65f5c"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.39.6/foundry-darwin-x64.tar.gz"
      sha256 "04291f0d32e226f4cde1e2b9c60b7d406b94a2b9a7b446dbcbeeb6174e0c07be"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.39.6/foundry-linux-x64.tar.gz"
      sha256 "33c6e306744e39757ea64ffaef405cf1e5ca12f20721ae2a25318d2e8ca57b77"

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
