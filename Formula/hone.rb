# typed: false
# frozen_string_literal: true

class Hone < Formula
  desc "Iterative codebase quality improvement CLI using Claude agents"
  homepage "https://github.com/svetzal/hone-cli"
  version "1.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/hone-cli/releases/download/v1.3.0/hone-darwin-arm64.tar.gz"
      sha256 "68e575879626ca58c5babf67b8bb18e27fa44acba997c90e6830dbff79b4386e"

      def install
        bin.install "hone-darwin-arm64" => "hone"
      end
    end

    on_intel do
      url "https://github.com/svetzal/hone-cli/releases/download/v1.3.0/hone-darwin-x64.tar.gz"
      sha256 "071288a9a1328fb6a5feffbd3c747210988c7d76c49f8400aa0ab81edd873d7a"

      def install
        bin.install "hone-darwin-x64" => "hone"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/hone-cli/releases/download/v1.3.0/hone-linux-x64.tar.gz"
      sha256 "94412c596b416de72111f3d36be91960ceb829e37ac7230714cf51a2f9ba59bf"

      def install
        bin.install "hone-linux-x64" => "hone"
      end
    end
  end

  test do
    assert_match "hone v#{version}", shell_output("#{bin}/hone --version")
  end
end
