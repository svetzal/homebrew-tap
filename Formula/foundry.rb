# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.33.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.33.0/foundry-darwin-arm64.tar.gz"
      sha256 "6e3b73da5f2abf7a1a6af70877137ec7c3dfaf3bb5984d024435222d92d62673"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.33.0/foundry-darwin-x64.tar.gz"
      sha256 "2fdfd2a830af32496f89b5b4b871f824daa5cc9498b915a5861275498398f466"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.33.0/foundry-linux-x64.tar.gz"
      sha256 "4d95d7ac8513642427cc933bd40d431564f1743af3fe886789f6f07ab4e6a9c3"

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
