# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.30.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.30.1/foundry-darwin-arm64.tar.gz"
      sha256 "d2d32a86551799a2236950f8de109950fd649e9d328de23f5903858d46452a7e"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.30.1/foundry-darwin-x64.tar.gz"
      sha256 "e3cc79bea4a46327c4f6cc81d9aa78b3867e0a347d0cd27cd7eab957855b252e"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.30.1/foundry-linux-x64.tar.gz"
      sha256 "1b695e43712901f672cc75e7455f0e751e05eafd4e7f8e3ae51ddd2ca4e22ab1"

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
