# typed: false
# frozen_string_literal: true

class Hone < Formula
  desc "Iterative codebase quality improvement CLI using Claude agents"
  homepage "https://github.com/svetzal/hone-cli"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/hone-cli/releases/download/v0.3.0/hone-darwin-arm64.tar.gz"
      sha256 "25b24f3311ab0f0b7a9db26a2b127452378e0380405ea3d7d0e126a3da9bf8ed"

      def install
        bin.install "hone-darwin-arm64" => "hone"
      end
    end

    on_intel do
      url "https://github.com/svetzal/hone-cli/releases/download/v0.3.0/hone-darwin-x64.tar.gz"
      sha256 "620557df9e929659444e014747be66db84ddc046be33474421165c474028e927"

      def install
        bin.install "hone-darwin-x64" => "hone"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/hone-cli/releases/download/v0.3.0/hone-linux-x64.tar.gz"
      sha256 "884731fbb4c56ed21f9ff94ad67c02107e2322e8792c21577906499740ee064f"

      def install
        bin.install "hone-linux-x64" => "hone"
      end
    end
  end

  test do
    assert_match "hone v#{version}", shell_output("#{bin}/hone --version")
  end
end
