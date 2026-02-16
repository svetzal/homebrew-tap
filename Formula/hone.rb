# typed: false
# frozen_string_literal: true

class Hone < Formula
  desc "Iterative codebase quality improvement CLI using Claude agents"
  homepage "https://github.com/svetzal/hone-cli"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/hone-cli/releases/download/v1.1.0/hone-darwin-arm64.tar.gz"
      sha256 "4df456bf800f3b91c305e8c0a531b3d9f5798c951c5171adcdb1993ca6afa74c"

      def install
        bin.install "hone-darwin-arm64" => "hone"
      end
    end

    on_intel do
      url "https://github.com/svetzal/hone-cli/releases/download/v1.1.0/hone-darwin-x64.tar.gz"
      sha256 "1a32d3b141228fc751d651106559f4232bcd44d5cdab1cb57881461468c9b87f"

      def install
        bin.install "hone-darwin-x64" => "hone"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/hone-cli/releases/download/v1.1.0/hone-linux-x64.tar.gz"
      sha256 "b9a8825c84d42946248c7c6ebd2a9bd2e8a1c69e306a3daf0df94e2a26baaf80"

      def install
        bin.install "hone-linux-x64" => "hone"
      end
    end
  end

  test do
    assert_match "hone v#{version}", shell_output("#{bin}/hone --version")
  end
end
