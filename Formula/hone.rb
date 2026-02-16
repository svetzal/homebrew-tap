# typed: false
# frozen_string_literal: true

class Hone < Formula
  desc "Iterative codebase quality improvement CLI using Claude agents"
  homepage "https://github.com/svetzal/hone-cli"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/hone-cli/releases/download/v1.0.0/hone-darwin-arm64.tar.gz"
      sha256 "f6feb57a7d1f694a9267bfa5bf379fe61ad63998c28541e7aa08e565372f7c45"

      def install
        bin.install "hone-darwin-arm64" => "hone"
      end
    end

    on_intel do
      url "https://github.com/svetzal/hone-cli/releases/download/v1.0.0/hone-darwin-x64.tar.gz"
      sha256 "f3c5881f0732c7b1db7baecd4d71c95173206c6b1b91bdc9124011f60abc1cb0"

      def install
        bin.install "hone-darwin-x64" => "hone"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/hone-cli/releases/download/v1.0.0/hone-linux-x64.tar.gz"
      sha256 "979e3bb53f54eeeb31bab1c540516fe4c2ba4b0051476854dac44304e5db8ce1"

      def install
        bin.install "hone-linux-x64" => "hone"
      end
    end
  end

  test do
    assert_match "hone v#{version}", shell_output("#{bin}/hone --version")
  end
end
