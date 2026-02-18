# typed: false
# frozen_string_literal: true

class Hone < Formula
  desc "Iterative codebase quality improvement CLI using Claude agents"
  homepage "https://github.com/svetzal/hone-cli"
  version "1.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/hone-cli/releases/download/v1.1.4/hone-darwin-arm64.tar.gz"
      sha256 "f7b10abd4d830800ea8f40c23ea984a210da17770e075d3f6c2d52869cdd4a56"

      def install
        bin.install "hone-darwin-arm64" => "hone"
      end
    end

    on_intel do
      url "https://github.com/svetzal/hone-cli/releases/download/v1.1.4/hone-darwin-x64.tar.gz"
      sha256 "9f269ce9f3b49c436d63a90e8164ca11d25dde8a705bc0b8a5991906451d513f"

      def install
        bin.install "hone-darwin-x64" => "hone"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/hone-cli/releases/download/v1.1.4/hone-linux-x64.tar.gz"
      sha256 "7a1595d0bb3aa017848e0b945a6acedb41e1d124bd9e06c7f383cfa9ad6a8bd7"

      def install
        bin.install "hone-linux-x64" => "hone"
      end
    end
  end

  test do
    assert_match "hone v#{version}", shell_output("#{bin}/hone --version")
  end
end
