# typed: false
# frozen_string_literal: true

class Hone < Formula
  desc "Iterative codebase quality improvement CLI using Claude agents"
  homepage "https://github.com/svetzal/hone-cli"
  version "1.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/hone-cli/releases/download/v1.2.1/hone-darwin-arm64.tar.gz"
      sha256 "3f4ce43c1e0730b08f043ad97573e83e8c3849899f65196622f963c6c13ab659"

      def install
        bin.install "hone-darwin-arm64" => "hone"
      end
    end

    on_intel do
      url "https://github.com/svetzal/hone-cli/releases/download/v1.2.1/hone-darwin-x64.tar.gz"
      sha256 "77f9d777cf54fbe3cd7ab6c46fe74af83b37e19c4cd2aed8d1c1932b868e4d2e"

      def install
        bin.install "hone-darwin-x64" => "hone"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/hone-cli/releases/download/v1.2.1/hone-linux-x64.tar.gz"
      sha256 "8e23f9ed6e513748eb1f1494ff705d8fb890a4e790ea4e800d2ac5cf9c365182"

      def install
        bin.install "hone-linux-x64" => "hone"
      end
    end
  end

  test do
    assert_match "hone v#{version}", shell_output("#{bin}/hone --version")
  end
end
