# typed: false
# frozen_string_literal: true

class Cmx < Formula
  desc "Package manager for curated agentic context — agents and skills"
  homepage "https://github.com/svetzal/context-mixer2"
  version "2.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.4.1/cmx-darwin-arm64.tar.gz"
      sha256 "efebdcb8c95e70fdd6b6f4deb4b18783ac634d79703918d46975d26d7dc7d983"

      def install
        bin.install "cmx"
      end
    end

    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.4.1/cmx-darwin-x64.tar.gz"
      sha256 "1ebc5fcdee1eff24a9cf90e1822e0460b720af263d7ffef21b2c4155075d1905"

      def install
        bin.install "cmx"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.4.1/cmx-linux-x64.tar.gz"
      sha256 "fb5556b6a65ff6fb479f9176901a7b8c7ce2f633c78c4bb5ee2de9d84003be28"

      def install
        bin.install "cmx"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cmx --version")
  end
end
