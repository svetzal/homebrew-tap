# typed: false
# frozen_string_literal: true

class Hone < Formula
  desc "Iterative codebase quality improvement CLI using Claude agents"
  homepage "https://github.com/svetzal/hone-cli"
  version "0.4.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/hone-cli/releases/download/v0.4.3/hone-darwin-arm64.tar.gz"
      sha256 "5366c6f83e09dc7f9adbe302cc85d4e961b6a029e728438b51b89fc233fc135e"

      def install
        bin.install "hone-darwin-arm64" => "hone"
      end
    end

    on_intel do
      url "https://github.com/svetzal/hone-cli/releases/download/v0.4.3/hone-darwin-x64.tar.gz"
      sha256 "864a4781051645d7c50d071c37e0c3687995ed34167eb8b189698326509b3093"

      def install
        bin.install "hone-darwin-x64" => "hone"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/hone-cli/releases/download/v0.4.3/hone-linux-x64.tar.gz"
      sha256 "4016a0f04457ed9add91d9a9ff0db679bdc41abf30ae57067317d4ce67c976c6"

      def install
        bin.install "hone-linux-x64" => "hone"
      end
    end
  end

  test do
    assert_match "hone v#{version}", shell_output("#{bin}/hone --version")
  end
end
