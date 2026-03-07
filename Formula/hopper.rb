# typed: false
# frozen_string_literal: true

class Hopper < Formula
  desc "Personal work queue CLI with LLM-generated titles"
  homepage "https://github.com/svetzal/hopper"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/hopper/releases/download/v#{version}/hopper-darwin-arm64.tar.gz"
      sha256 "943c96b08c4ccd52b9f887781ba5a5e23fa240afee2d7485be62f1c6aa382b70"

      def install
        bin.install "hopper-darwin-arm64" => "hopper"
      end
    end

    on_intel do
      url "https://github.com/svetzal/hopper/releases/download/v#{version}/hopper-darwin-x64.tar.gz"
      sha256 "519f9b503d6f998114d718c6ed4a7a57c0514ebd531884e019e16125d78983ff"

      def install
        bin.install "hopper-darwin-x64" => "hopper"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/hopper/releases/download/v#{version}/hopper-linux-x64.tar.gz"
      sha256 "affc799822b6ba4ae07954d9ca3a25eda48dd5cd58441e0ccabf59b6079ac59f"

      def install
        bin.install "hopper-linux-x64" => "hopper"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hopper --version")
  end
end
