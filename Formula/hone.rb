# typed: false
# frozen_string_literal: true

class Hone < Formula
  desc "Iterative codebase quality improvement CLI using Claude agents"
  homepage "https://github.com/svetzal/hone-cli"
  version "2.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/hone-cli/releases/download/v2.0.2/hone-darwin-arm64.tar.gz"
      sha256 "6f6819925a79744f59d24bbb9f4470655b0895740218237e5a94134940c83617"

      def install
        system "codesign", "--remove-signature", "hone-darwin-arm64"
        system "codesign", "--sign", "-", "--force", "hone-darwin-arm64"
        bin.install "hone-darwin-arm64" => "hone"
      end
    end

    on_intel do
      url "https://github.com/svetzal/hone-cli/releases/download/v2.0.2/hone-darwin-x64.tar.gz"
      sha256 "9028f2a84f63a62c7c4741e1a9e04f12228bbf7111047e471e4fbbbf92bc5721"

      def install
        system "codesign", "--remove-signature", "hone-darwin-x64"
        system "codesign", "--sign", "-", "--force", "hone-darwin-x64"
        bin.install "hone-darwin-x64" => "hone"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/hone-cli/releases/download/v2.0.2/hone-linux-x64.tar.gz"
      sha256 "c0b38a51f8d0daa0a1e52f4f17f41a64b5e3fcc26a25eda604403eb4fca44e65"

      def install
        bin.install "hone-linux-x64" => "hone"
      end
    end
  end

  test do
    assert_match "hone v#{version}", shell_output("#{bin}/hone --version")
  end
end
