# typed: false
# frozen_string_literal: true

class Hopper < Formula
  desc "Personal work queue CLI with LLM-generated titles"
  homepage "https://github.com/svetzal/hopper"
  version "2.0.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/hopper/releases/download/v#{version}/hopper-darwin-arm64.tar.gz"
      sha256 "1d041febfd8af23136314f14bbc2721d034f8cbd6441b6a685766e319dd2036f"

      def install
        bin.install "hopper-darwin-arm64" => "hopper"
      end
    end

    on_intel do
      url "https://github.com/svetzal/hopper/releases/download/v#{version}/hopper-darwin-x64.tar.gz"
      sha256 "631f7f921306d57fc6ad8d49386745330d438d3d93b3e65357396510cc64dd27"

      def install
        bin.install "hopper-darwin-x64" => "hopper"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/hopper/releases/download/v#{version}/hopper-linux-x64.tar.gz"
      sha256 "f4cffe3ed4d700a658cffcb421ad7f8782c68f9b3872c5396521d1af0843e352"

      def install
        bin.install "hopper-linux-x64" => "hopper"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hopper --version")
  end
end
