# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.39.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.39.0/foundry-darwin-arm64.tar.gz"
      sha256 "c6302d170733ed233aa3c95d6c18342d240e1f344704b1200c329fd2add978b2"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.39.0/foundry-darwin-x64.tar.gz"
      sha256 "24e159a19ce10a23057f03b02378e49a49c4ff53aaf5b1f2070f2d8e7007ffce"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.39.0/foundry-linux-x64.tar.gz"
      sha256 "b0af79cac501ea8f4faae388b70d16798251a1edc92e5ec86ba9ce77607b809d"

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
