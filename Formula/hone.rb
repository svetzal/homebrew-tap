# typed: false
# frozen_string_literal: true

class Hone < Formula
  desc "Iterative codebase quality improvement CLI using Claude agents"
  homepage "https://github.com/svetzal/hone-cli"
  version "1.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/hone-cli/releases/download/v1.3.2/hone-darwin-arm64.tar.gz"
      sha256 "85e87511963b68e34d90b65178a83349ef22b9c470fb33cfe5d3aae0d2fa2cd6"

      def install
        bin.install "hone-darwin-arm64" => "hone"
      end
    end

    on_intel do
      url "https://github.com/svetzal/hone-cli/releases/download/v1.3.2/hone-darwin-x64.tar.gz"
      sha256 "ddc8b14c08b7e145431f708b1f721a82a4c006c114480d5046b9d2c18b61e6c4"

      def install
        bin.install "hone-darwin-x64" => "hone"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/hone-cli/releases/download/v1.3.2/hone-linux-x64.tar.gz"
      sha256 "d44900c26035ab55e4071e62b828a379f3bba8f91b3a0f7c3c1158f4e080666b"

      def install
        bin.install "hone-linux-x64" => "hone"
      end
    end
  end

  test do
    assert_match "hone v#{version}", shell_output("#{bin}/hone --version")
  end
end
