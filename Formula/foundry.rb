# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.55.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.55.0/foundry-darwin-arm64.tar.gz"
      sha256 "3fe5b04fb20d25e9b95cea0055cd2dfb703276120097180e6f63d74daf8898ff"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.55.0/foundry-darwin-x64.tar.gz"
      sha256 "ff8125f447a98a58fab6cb7a863dc568e987177e3bffe061b373efa005673396"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.55.0/foundry-linux-x64.tar.gz"
      sha256 "128f488cc0988eff9585fcd1a291a799140454ebf1f3add2bbba590d63a4d4c1"

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
