# typed: false
# frozen_string_literal: true

class Hone < Formula
  desc "Iterative codebase quality improvement CLI using Claude agents"
  homepage "https://github.com/svetzal/hone-cli"
  version "1.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/hone-cli/releases/download/v1.1.2/hone-darwin-arm64.tar.gz"
      sha256 "309d8d2258557e7d98a00401186643a11ee6600892faf45646568ee961ae7a94"

      def install
        bin.install "hone-darwin-arm64" => "hone"
      end
    end

    on_intel do
      url "https://github.com/svetzal/hone-cli/releases/download/v1.1.2/hone-darwin-x64.tar.gz"
      sha256 "cc85693d196b191e8cca9a4be6ad83e84b62e555712d465509142bf62e941436"

      def install
        bin.install "hone-darwin-x64" => "hone"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/hone-cli/releases/download/v1.1.2/hone-linux-x64.tar.gz"
      sha256 "1a365b71a15561e73be318dd56ade19fad74d6a3575d2518402b9bbc0ae07887"

      def install
        bin.install "hone-linux-x64" => "hone"
      end
    end
  end

  test do
    assert_match "hone v#{version}", shell_output("#{bin}/hone --version")
  end
end
