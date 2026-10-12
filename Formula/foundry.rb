# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.47.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.47.0/foundry-darwin-arm64.tar.gz"
      sha256 "5254f919f1ff7b937cec22eccb939d90e77b8d78a3021acc40a1cb820c2641c6"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.47.0/foundry-darwin-x64.tar.gz"
      sha256 "15e2f52309728bbc7d262124a22732856109ee10635b13d31a316148dc712c2a"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.47.0/foundry-linux-x64.tar.gz"
      sha256 "07df16835c76f7bc004f5987dddd98bb66085111e186dc0cfbe98ee89084869b"

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
