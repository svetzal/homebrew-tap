# typed: false
# frozen_string_literal: true

class Hone < Formula
  desc "Iterative codebase quality improvement CLI using Claude agents"
  homepage "https://github.com/svetzal/hone-cli"
  version "2.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/hone-cli/releases/download/v2.0.0/hone-darwin-arm64.tar.gz"
      sha256 "7161e73e7d96b39da76160d5aab1f0c916c41ba991d2d10b247c3a90f8d945c3"

      def install
        bin.install "hone-darwin-arm64" => "hone"
      end
    end

    on_intel do
      url "https://github.com/svetzal/hone-cli/releases/download/v2.0.0/hone-darwin-x64.tar.gz"
      sha256 "33dd3717a6793067e84099150496a623269fa9bfff4c049206decf5765cb36bd"

      def install
        bin.install "hone-darwin-x64" => "hone"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/hone-cli/releases/download/v2.0.0/hone-linux-x64.tar.gz"
      sha256 "33931c1e36e7ec0fbb466b8b52a82bda9f599c76698f016b905ba1626c170472"

      def install
        bin.install "hone-linux-x64" => "hone"
      end
    end
  end

  test do
    assert_match "hone v#{version}", shell_output("#{bin}/hone --version")
  end
end
