# typed: false
# frozen_string_literal: true

class Hone < Formula
  desc "Iterative codebase quality improvement CLI using Claude agents"
  homepage "https://github.com/svetzal/hone-cli"
  version "1.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/hone-cli/releases/download/v1.1.1/hone-darwin-arm64.tar.gz"
      sha256 "a470bf8fad13f0cacb138397220e318b5d4449b1600b1784641db2f3786c5c25"

      def install
        bin.install "hone-darwin-arm64" => "hone"
      end
    end

    on_intel do
      url "https://github.com/svetzal/hone-cli/releases/download/v1.1.1/hone-darwin-x64.tar.gz"
      sha256 "f010a9ba9712d82e81b5bad92708df7b4c8e9bf14bafeb0b02d9cb1a9501f125"

      def install
        bin.install "hone-darwin-x64" => "hone"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/hone-cli/releases/download/v1.1.1/hone-linux-x64.tar.gz"
      sha256 "6f74a4ccbd4973e640753ef8edf3d576ccfb653a4ba25f2baa00d3c29ec6b5c6"

      def install
        bin.install "hone-linux-x64" => "hone"
      end
    end
  end

  test do
    assert_match "hone v#{version}", shell_output("#{bin}/hone --version")
  end
end
