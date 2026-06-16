# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.25.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.25.2/foundry-darwin-arm64.tar.gz"
      sha256 "4a24e7544f20eaf0b331370ae3a413a49cbe607f6671e629c762c9cdaa184d35"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.25.2/foundry-darwin-x64.tar.gz"
      sha256 "b4b367e59e680c4e345eb042482062874268c82bd2e7f7ccd3bbd37fff5dd7c0"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.25.2/foundry-linux-x64.tar.gz"
      sha256 "2b4eef6714851dd1faa58f60feb4f7ffdd05703b3e0daab899d3f96b0f2d5cbf"

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
