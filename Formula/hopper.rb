# typed: false
# frozen_string_literal: true

class Hopper < Formula
  desc "Personal work queue CLI with LLM-generated titles"
  homepage "https://github.com/svetzal/hopper"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/hopper/releases/download/v#{version}/hopper-darwin-arm64.tar.gz"
      sha256 "7dec49f8fdc3732f9bda993514d548a9b88d746a678f860f2d0aa6d898310f4d"

      def install
        bin.install "hopper-darwin-arm64" => "hopper"
      end
    end

    on_intel do
      url "https://github.com/svetzal/hopper/releases/download/v#{version}/hopper-darwin-x64.tar.gz"
      sha256 "f48c562046bf88dbecefff29021e720bfe062e4908574755813d44fd2a3ef873"

      def install
        bin.install "hopper-darwin-x64" => "hopper"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/hopper/releases/download/v#{version}/hopper-linux-x64.tar.gz"
      sha256 "4b12832f6577b14c866e3cd35aa7dc20d2d6396dea871bb84060d561e740ee71"

      def install
        bin.install "hopper-linux-x64" => "hopper"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hopper --version")
  end
end
