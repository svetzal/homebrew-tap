# typed: false
# frozen_string_literal: true

class Hone < Formula
  desc "Iterative codebase quality improvement CLI using Claude agents"
  homepage "https://github.com/svetzal/hone-cli"
  version "2.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/hone-cli/releases/download/v2.0.1/hone-darwin-arm64.tar.gz"
      sha256 "5d8cbfdfb16221502fb266b166c89592a8fe6dafdbe728d4f07abf3c353cb4ae"

      def install
        system "codesign", "--remove-signature", "hone-darwin-arm64"
        system "codesign", "--sign", "-", "--force", "hone-darwin-arm64"
        bin.install "hone-darwin-arm64" => "hone"
      end
    end

    on_intel do
      url "https://github.com/svetzal/hone-cli/releases/download/v2.0.1/hone-darwin-x64.tar.gz"
      sha256 "12be1a47dd6fce8daaafd38da07d18ba761c1afcc82d8ab0855a1b230b8b3079"

      def install
        system "codesign", "--remove-signature", "hone-darwin-x64"
        system "codesign", "--sign", "-", "--force", "hone-darwin-x64"
        bin.install "hone-darwin-x64" => "hone"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/hone-cli/releases/download/v2.0.1/hone-linux-x64.tar.gz"
      sha256 "6b75c33974817a827093b2ce26376a1a5f6a6369fc10e466ecf90880fc812c71"

      def install
        bin.install "hone-linux-x64" => "hone"
      end
    end
  end

  test do
    assert_match "hone v#{version}", shell_output("#{bin}/hone --version")
  end
end
