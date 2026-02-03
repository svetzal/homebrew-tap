# typed: false
# frozen_string_literal: true

class Hone < Formula
  desc "Iterative codebase quality improvement CLI using Claude agents"
  homepage "https://github.com/svetzal/hone-cli"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/hone-cli/releases/download/v0.4.2/hone-darwin-arm64.tar.gz"
      sha256 "a71d008890ac90c91dbfe74758609b69bb7a3b4cecabc66e3ec4b9b500c2a5d6"

      def install
        bin.install "hone-darwin-arm64" => "hone"
      end
    end

    on_intel do
      url "https://github.com/svetzal/hone-cli/releases/download/v0.4.2/hone-darwin-x64.tar.gz"
      sha256 "87cfd8a782dcbc0dfceb0a1ff3eb65271e3517036da1619a5a64be13f7712cd0"

      def install
        bin.install "hone-darwin-x64" => "hone"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/hone-cli/releases/download/v0.4.2/hone-linux-x64.tar.gz"
      sha256 "794924ba8577ef184742c9564eb1c93d619908e22e64bd7570545da0eb515615"

      def install
        bin.install "hone-linux-x64" => "hone"
      end
    end
  end

  test do
    assert_match "hone v#{version}", shell_output("#{bin}/hone --version")
  end
end
