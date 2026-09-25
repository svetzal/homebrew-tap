# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.38.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.38.0/foundry-darwin-arm64.tar.gz"
      sha256 "bf6f7a95025d7f5aed6418ea6c0392382562117851ac3afb7398286eb7d9c500"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.38.0/foundry-darwin-x64.tar.gz"
      sha256 "c0e2b289d549066091a2b8113a0c2baaee7456586a81af17e89c2aa783673b75"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.38.0/foundry-linux-x64.tar.gz"
      sha256 "9bf3c8dd4427b931f092b1916f5412b8d6616466eb0d66a57f7f9672e95e5723"

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
