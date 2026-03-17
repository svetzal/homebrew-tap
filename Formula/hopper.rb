# typed: false
# frozen_string_literal: true

class Hopper < Formula
  desc "Personal work queue CLI with LLM-generated titles"
  homepage "https://github.com/svetzal/hopper"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/hopper/releases/download/v#{version}/hopper-darwin-arm64.tar.gz"
      sha256 "a36202308305e08fe9f034b5a183d638d9ebd56789a80b498865e9b6a418f230"

      def install
        bin.install "hopper-darwin-arm64" => "hopper"
      end
    end

    on_intel do
      url "https://github.com/svetzal/hopper/releases/download/v#{version}/hopper-darwin-x64.tar.gz"
      sha256 "8f2e851cd0e73dc55052726e1a00f12f62581a52edb006985eb691663dabc144"

      def install
        bin.install "hopper-darwin-x64" => "hopper"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/hopper/releases/download/v#{version}/hopper-linux-x64.tar.gz"
      sha256 "0829ef6ec1eb5a0783170e32e30d2c72765f4e4f21ce6368cc4f77d2d4e1dbe7"

      def install
        bin.install "hopper-linux-x64" => "hopper"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hopper --version")
  end
end
