# typed: false
# frozen_string_literal: true

class Hone < Formula
  desc "Iterative codebase quality improvement CLI using Claude agents"
  homepage "https://github.com/svetzal/hone-cli"
  version "1.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/hone-cli/releases/download/v1.1.3/hone-darwin-arm64.tar.gz"
      sha256 "f49a50fa8c32cd991a4817214d5d5a5a46ea5c7b2bbd53b87d4f45002adc1216"

      def install
        bin.install "hone-darwin-arm64" => "hone"
      end
    end

    on_intel do
      url "https://github.com/svetzal/hone-cli/releases/download/v1.1.3/hone-darwin-x64.tar.gz"
      sha256 "c706f46ec0ac96db4b2aeb21414e338f69a93e5f351fdb514e547c6d5f777ed2"

      def install
        bin.install "hone-darwin-x64" => "hone"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/hone-cli/releases/download/v1.1.3/hone-linux-x64.tar.gz"
      sha256 "c207c8cfded7970dbb50be8a13809497ec053c506b0251e5b29e6e276a3f62e4"

      def install
        bin.install "hone-linux-x64" => "hone"
      end
    end
  end

  test do
    assert_match "hone v#{version}", shell_output("#{bin}/hone --version")
  end
end
