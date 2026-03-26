# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.3.0/foundry-darwin-arm64.tar.gz"
      sha256 "a1e175fe4873d3b378f9fa563ee3c378e62fd1b708913f2379551a90f77db635"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.3.0/foundry-darwin-x64.tar.gz"
      sha256 "4b0a39f606403dfacfbe1abb00693f9babd598474a979f882eec49b7dd4ff161"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.3.0/foundry-linux-x64.tar.gz"
      sha256 "7ed82e962f2e575d5e164c21765157d63e67af194ffee527681fd8f3772505a5"

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
