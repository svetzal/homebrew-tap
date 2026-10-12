# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.46.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.46.0/foundry-darwin-arm64.tar.gz"
      sha256 "14880cc996c8ed04acb148a1e1e73115c45e6970c4ecb9234f9e53a89dd76c3d"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.46.0/foundry-darwin-x64.tar.gz"
      sha256 "de79a4788dc96ea03231aed3682cbef4ad0d837f7ba35563bc87358cf2d354f7"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.46.0/foundry-linux-x64.tar.gz"
      sha256 "1dfabecd0cfc0eebc99e611e0bd5ddd6df3c38a808cbc34247d0e181c78f5eab"

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
