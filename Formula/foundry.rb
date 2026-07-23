# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.30.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.30.4/foundry-darwin-arm64.tar.gz"
      sha256 "0b43817c99198f32e80345a0d2c82e69275a2eefb65e5138b18a92652566424d"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.30.4/foundry-darwin-x64.tar.gz"
      sha256 "619ab591058cbf893cb2d49734593b856ee4e1c79bc3f5aa29e0085fd904ff68"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.30.4/foundry-linux-x64.tar.gz"
      sha256 "cff5972bc7d089e03f5be1a99364f63d88b379e5a041cc5e92385d1126de791a"

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
