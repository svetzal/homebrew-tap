# typed: false
# frozen_string_literal: true

class Hone < Formula
  desc "Iterative codebase quality improvement CLI using Claude agents"
  homepage "https://github.com/svetzal/hone-cli"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/hone-cli/releases/download/v0.4.1/hone-darwin-arm64.tar.gz"
      sha256 "376e72854d2101ba7bd05224bba75eb3a16cf5dd98f189e70f345848806e13e1"

      def install
        bin.install "hone-darwin-arm64" => "hone"
      end
    end

    on_intel do
      url "https://github.com/svetzal/hone-cli/releases/download/v0.4.1/hone-darwin-x64.tar.gz"
      sha256 "e859bf85d5a7eaee3ad7e8ad24880d3ea167466bb081218324ed6893459eac4d"

      def install
        bin.install "hone-darwin-x64" => "hone"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/hone-cli/releases/download/v0.4.1/hone-linux-x64.tar.gz"
      sha256 "db8787c8ffa3ccf06dc86f693b83e57aa17235f8539a7f77095eddaa843f8bd0"

      def install
        bin.install "hone-linux-x64" => "hone"
      end
    end
  end

  test do
    assert_match "hone v#{version}", shell_output("#{bin}/hone --version")
  end
end
