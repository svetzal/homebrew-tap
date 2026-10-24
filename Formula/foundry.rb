# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.57.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.57.2/foundry-darwin-arm64.tar.gz"
      sha256 "78b28eff61dbd50d5cfe38e5902222b78fee00541331f9c3ff64114930df24b0"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.57.2/foundry-darwin-x64.tar.gz"
      sha256 "88f47448a7ba9fb5213ef8c4653b0d153f47609fbbf2608a3e0b9a552bcddeb0"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.57.2/foundry-linux-x64.tar.gz"
      sha256 "e90bf05bf158ddb2bdbd801f5fbcdb14dee55bb7e85e5056b738e87681c20caf"

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
