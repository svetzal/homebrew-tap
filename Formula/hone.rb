# typed: false
# frozen_string_literal: true

class Hone < Formula
  desc "Iterative codebase quality improvement CLI using Claude agents"
  homepage "https://github.com/svetzal/hone-cli"
  version "1.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/hone-cli/releases/download/v1.3.1/hone-darwin-arm64.tar.gz"
      sha256 "a193333e6113611c48cb2f96ca7a924b76af71e8f0d264f4a832ffed2575b874"

      def install
        bin.install "hone-darwin-arm64" => "hone"
      end
    end

    on_intel do
      url "https://github.com/svetzal/hone-cli/releases/download/v1.3.1/hone-darwin-x64.tar.gz"
      sha256 "6ddc77dd6f4df20732818060b4ddeb1de97d3089a0613c77e845f99b9b7ec514"

      def install
        bin.install "hone-darwin-x64" => "hone"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/hone-cli/releases/download/v1.3.1/hone-linux-x64.tar.gz"
      sha256 "2f2a0a000e21d9da5f4a5f0ecc928018eb549f3f8f72fdf7b65ea2648e838445"

      def install
        bin.install "hone-linux-x64" => "hone"
      end
    end
  end

  test do
    assert_match "hone v#{version}", shell_output("#{bin}/hone --version")
  end
end
