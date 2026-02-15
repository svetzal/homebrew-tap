# typed: false
# frozen_string_literal: true

class Hone < Formula
  desc "Iterative codebase quality improvement CLI using Claude agents"
  homepage "https://github.com/svetzal/hone-cli"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/hone-cli/releases/download/v0.5.0/hone-darwin-arm64.tar.gz"
      sha256 "8f400181ca1de22f831782e67e9cbe63baa2fffa324d2e3d5906263ea5596ab5"

      def install
        bin.install "hone-darwin-arm64" => "hone"
      end
    end

    on_intel do
      url "https://github.com/svetzal/hone-cli/releases/download/v0.5.0/hone-darwin-x64.tar.gz"
      sha256 "ff4b9ffba978ca6365fda6a0603bab4c473318035aa3b11eae5f8c975d9f843f"

      def install
        bin.install "hone-darwin-x64" => "hone"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/hone-cli/releases/download/v0.5.0/hone-linux-x64.tar.gz"
      sha256 "080ae3d444b2348c5a715540246670d787fbbfcbd4380064024779ff9033f6da"

      def install
        bin.install "hone-linux-x64" => "hone"
      end
    end
  end

  test do
    assert_match "hone v#{version}", shell_output("#{bin}/hone --version")
  end
end
