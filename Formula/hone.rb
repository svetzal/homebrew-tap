# typed: false
# frozen_string_literal: true

class Hone < Formula
  desc "Iterative codebase quality improvement CLI using Claude agents"
  homepage "https://github.com/svetzal/hone-cli"
  version "1.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/hone-cli/releases/download/v1.2.2/hone-darwin-arm64.tar.gz"
      sha256 "0c27b4a8aa16fa6a350d49ae8d9dad1f97e13081c2e336cdf5c16b34167c27c3"

      def install
        bin.install "hone-darwin-arm64" => "hone"
      end
    end

    on_intel do
      url "https://github.com/svetzal/hone-cli/releases/download/v1.2.2/hone-darwin-x64.tar.gz"
      sha256 "3a0540729ff696910490ae9c3d06d1a55710a778e117e3bb89f1388f496db43b"

      def install
        bin.install "hone-darwin-x64" => "hone"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/hone-cli/releases/download/v1.2.2/hone-linux-x64.tar.gz"
      sha256 "4daa9c1fad873bdc5ce392278fea51f41c69a4c1f0808c7ce4422c50598f9fb1"

      def install
        bin.install "hone-linux-x64" => "hone"
      end
    end
  end

  test do
    assert_match "hone v#{version}", shell_output("#{bin}/hone --version")
  end
end
