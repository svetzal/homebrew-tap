# typed: false
# frozen_string_literal: true

class Hone < Formula
  desc "Iterative codebase quality improvement CLI using Claude agents"
  homepage "https://github.com/svetzal/hone-cli"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/hone-cli/releases/download/v0.7.0/hone-darwin-arm64.tar.gz"
      sha256 "79aa2dce57e32c655e8ea91a044b8606a40d69bec56d134afe4a537c6e56a7ae"

      def install
        bin.install "hone-darwin-arm64" => "hone"
      end
    end

    on_intel do
      url "https://github.com/svetzal/hone-cli/releases/download/v0.7.0/hone-darwin-x64.tar.gz"
      sha256 "6ffa53bd05030e4853cb13d0812637656d9f92c45e2889f580fe14890cd8edae"

      def install
        bin.install "hone-darwin-x64" => "hone"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/hone-cli/releases/download/v0.7.0/hone-linux-x64.tar.gz"
      sha256 "89d4590a1c09d9e3536750151151d21b22a5d156577014de3b8d18a86eda84a0"

      def install
        bin.install "hone-linux-x64" => "hone"
      end
    end
  end

  test do
    assert_match "hone v#{version}", shell_output("#{bin}/hone --version")
  end
end
