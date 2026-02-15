# typed: false
# frozen_string_literal: true

class Hone < Formula
  desc "Iterative codebase quality improvement CLI using Claude agents"
  homepage "https://github.com/svetzal/hone-cli"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/hone-cli/releases/download/v0.6.0/hone-darwin-arm64.tar.gz"
      sha256 "ac21216da2ee77b51650f35432edd637503c1088eb251976ad0158ac54632722"

      def install
        bin.install "hone-darwin-arm64" => "hone"
      end
    end

    on_intel do
      url "https://github.com/svetzal/hone-cli/releases/download/v0.6.0/hone-darwin-x64.tar.gz"
      sha256 "9d7f7861daa63733aba94c180cfab6c7bd70c6a5ffc5bc86230bbb90b4d15070"

      def install
        bin.install "hone-darwin-x64" => "hone"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/hone-cli/releases/download/v0.6.0/hone-linux-x64.tar.gz"
      sha256 "2bb221de8c6d4951f3ba125fd61a36d393bf3cfdd54e9ce497fb07ccc9ce303c"

      def install
        bin.install "hone-linux-x64" => "hone"
      end
    end
  end

  test do
    assert_match "hone v#{version}", shell_output("#{bin}/hone --version")
  end
end
