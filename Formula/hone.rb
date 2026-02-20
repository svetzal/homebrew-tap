# typed: false
# frozen_string_literal: true

class Hone < Formula
  desc "Iterative codebase quality improvement CLI using Claude agents"
  homepage "https://github.com/svetzal/hone-cli"
  version "1.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/hone-cli/releases/download/v1.1.5/hone-darwin-arm64.tar.gz"
      sha256 "a6f1f57b4549cecbced8352c5c22505e2009f0f74dbc490c2e68fbb92878ee65"

      def install
        bin.install "hone-darwin-arm64" => "hone"
      end
    end

    on_intel do
      url "https://github.com/svetzal/hone-cli/releases/download/v1.1.5/hone-darwin-x64.tar.gz"
      sha256 "9844d89e4c010779facbdf14488007b4390267182d14151d20480250dad44f4f"

      def install
        bin.install "hone-darwin-x64" => "hone"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/hone-cli/releases/download/v1.1.5/hone-linux-x64.tar.gz"
      sha256 "59e30c21fcfcf705d9bce3184fccc6a81a41857b6e0ea268c15e4d5a39c5334f"

      def install
        bin.install "hone-linux-x64" => "hone"
      end
    end
  end

  test do
    assert_match "hone v#{version}", shell_output("#{bin}/hone --version")
  end
end
