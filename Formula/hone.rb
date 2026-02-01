# typed: false
# frozen_string_literal: true

class Hone < Formula
  desc "Iterative codebase quality improvement CLI using Claude agents"
  homepage "https://github.com/svetzal/hone-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/hone-cli/releases/download/v0.1.0/hone-darwin-arm64.tar.gz"
      sha256 "59df8ecfcaf53477f57a179289e784bed23718e261c311484481de3ecbd3955d"

      def install
        bin.install "hone-darwin-arm64" => "hone"
      end
    end

    on_intel do
      url "https://github.com/svetzal/hone-cli/releases/download/v0.1.0/hone-darwin-x64.tar.gz"
      sha256 "0e97fd64069832d0b538ca78c61343eea749a8401810d0a14eb69f781b8b274a"

      def install
        bin.install "hone-darwin-x64" => "hone"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/hone-cli/releases/download/v0.1.0/hone-linux-x64.tar.gz"
      sha256 "35b3e4c78ef62bde711ab8e64754cd5c2b85cc111317c654f0e935181f31880e"

      def install
        bin.install "hone-linux-x64" => "hone"
      end
    end
  end

  test do
    assert_match "hone v#{version}", shell_output("#{bin}/hone --version")
  end
end
