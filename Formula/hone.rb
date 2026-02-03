# typed: false
# frozen_string_literal: true

class Hone < Formula
  desc "Iterative codebase quality improvement CLI using Claude agents"
  homepage "https://github.com/svetzal/hone-cli"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/hone-cli/releases/download/v0.4.0/hone-darwin-arm64.tar.gz"
      sha256 "da5cb1b66566fdabd929803dbe0ae09f78b8cdb72cac15bfdd1ff7e4b5eb2692"

      def install
        bin.install "hone-darwin-arm64" => "hone"
      end
    end

    on_intel do
      url "https://github.com/svetzal/hone-cli/releases/download/v0.4.0/hone-darwin-x64.tar.gz"
      sha256 "25e83f1d99cc67ff92c51c796a1cf911301f1534b271a76540928995c218f5f5"

      def install
        bin.install "hone-darwin-x64" => "hone"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/hone-cli/releases/download/v0.4.0/hone-linux-x64.tar.gz"
      sha256 "f519ac85668da7ce6d158ee4095bc2fc5ee2596f7cbcfbceed599027477a84cd"

      def install
        bin.install "hone-linux-x64" => "hone"
      end
    end
  end

  test do
    assert_match "hone v#{version}", shell_output("#{bin}/hone --version")
  end
end
