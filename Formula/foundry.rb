# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.56.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.56.0/foundry-darwin-arm64.tar.gz"
      sha256 "01420fbefc8ecf27cbacf5132fe2dd67ee8d5dd9fca506235d7c1b76926e338e"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.56.0/foundry-darwin-x64.tar.gz"
      sha256 "d3a2cfdbb65948b1db6200eeda885f8500a847dba3247d8a35d64ded45612023"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.56.0/foundry-linux-x64.tar.gz"
      sha256 "3144f8b4404d4f37aee5697d05aafc5fbcebd837834ad64627096159f8c11fe3"

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
