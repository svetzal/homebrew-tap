# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.38.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.38.1/foundry-darwin-arm64.tar.gz"
      sha256 "9042a6975004543a7533aaaba43d2907c4500cd189b0372bed32a6874d70488a"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.38.1/foundry-darwin-x64.tar.gz"
      sha256 "94822fdbc4a4d5141655e4d755de710905f9b82195b53164f67cc82d30690e88"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.38.1/foundry-linux-x64.tar.gz"
      sha256 "b1686058e766939f69070ed1aca03eea81a88b7aed99a9df6c37a23ead189511"

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
