# typed: false
# frozen_string_literal: true

class Hopper < Formula
  desc "Personal work queue CLI with LLM-generated titles"
  homepage "https://github.com/svetzal/hopper"
  version "1.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/hopper/releases/download/v#{version}/hopper-darwin-arm64.tar.gz"
      sha256 "35890f853a1ce98280dc4544e11929ce22863b1b5b08775f435b1f45e4fbdcf0"

      def install
        bin.install "hopper-darwin-arm64" => "hopper"
      end
    end

    on_intel do
      url "https://github.com/svetzal/hopper/releases/download/v#{version}/hopper-darwin-x64.tar.gz"
      sha256 "0f1439ff526f4dc15ed28de98fca56c7b47eb74926b167e952cbad5bf20e4bf1"

      def install
        bin.install "hopper-darwin-x64" => "hopper"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/hopper/releases/download/v#{version}/hopper-linux-x64.tar.gz"
      sha256 "65eae659f97f54c6b7929520648d742a702f006f48e829af5f33b81b379dc053"

      def install
        bin.install "hopper-linux-x64" => "hopper"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hopper --version")
  end
end
