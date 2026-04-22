# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.13.0/foundry-darwin-arm64.tar.gz"
      sha256 "cc271e544f16352a5ac29fd69f3163dbd6997f2029d4af5a67de09b209fd0ac7"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.13.0/foundry-darwin-x64.tar.gz"
      sha256 "a002c88e3279e3f4ca0d26660f7c4c7664c88050c0878c54a0b3fc1324358395"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.13.0/foundry-linux-x64.tar.gz"
      sha256 "fb34b8db5274689bea3ad98367c8c2dbebbb51dabb413337eeb0990038c711fc"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/foundry --version")
  end
end
