# typed: false
# frozen_string_literal: true

class Hone < Formula
  desc "Iterative codebase quality improvement CLI using Claude agents"
  homepage "https://github.com/svetzal/hone-cli"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/hone-cli/releases/download/v0.5.1/hone-darwin-arm64.tar.gz"
      sha256 "063aa4a5be3ce6abae8117eabde30c2441d5d1f340a29c769c7f495f491ab4c5"

      def install
        bin.install "hone-darwin-arm64" => "hone"
      end
    end

    on_intel do
      url "https://github.com/svetzal/hone-cli/releases/download/v0.5.1/hone-darwin-x64.tar.gz"
      sha256 "9a44865d2973a515e263b9322588132b4fc83680ac5e9b0b4b149e62c2f47548"

      def install
        bin.install "hone-darwin-x64" => "hone"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/hone-cli/releases/download/v0.5.1/hone-linux-x64.tar.gz"
      sha256 "1fe543021ba9e98eef65908deadac190486d8685e6cc43f975cbf8a5fa9a43d0"

      def install
        bin.install "hone-linux-x64" => "hone"
      end
    end
  end

  test do
    assert_match "hone v#{version}", shell_output("#{bin}/hone --version")
  end
end
