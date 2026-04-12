# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.10.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.10.1/foundry-darwin-arm64.tar.gz"
      sha256 "cae88bf2e8bfc8e0cdaf9c4de9fb8a9ba9ae9d93d6c00daf072a4ad62aceedcd"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.10.1/foundry-darwin-x64.tar.gz"
      sha256 "707be2e2f06eec6bff5641e3f6614db4660aeed2d3acab2d5b34743430c5f3a3"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.10.1/foundry-linux-x64.tar.gz"
      sha256 "f5c6dc3c98e6a52f3979907fc504c53e168e1e61e336ac93fada0a3f21a9965e"

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
