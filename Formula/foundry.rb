# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.38.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.38.2/foundry-darwin-arm64.tar.gz"
      sha256 "d05c049fb3f447c0ea1d3bcc518ab8e161f1d92ae7cc373dbd2abf6dc85d6aaa"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.38.2/foundry-darwin-x64.tar.gz"
      sha256 "aeae6d68c703b4c175c323558ee6713333ddfe0bf212f2bae678ab4708f479af"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.38.2/foundry-linux-x64.tar.gz"
      sha256 "3d9d3de10e04c48cc6002f90dc3a3ff245e8695f66c4a88a10605f0ebbf88343"

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
