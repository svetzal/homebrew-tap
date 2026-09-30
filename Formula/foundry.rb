# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.40.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.40.3/foundry-darwin-arm64.tar.gz"
      sha256 "3f5604544446e587d92960284b8724ec87f66aa208d26d572ff7d89f77ec7576"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.40.3/foundry-darwin-x64.tar.gz"
      sha256 "17e40974de63b850f6ac3017eea09ecedd2fe02489e83f65aa8d27fbce012431"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.40.3/foundry-linux-x64.tar.gz"
      sha256 "ba298f2f3faf40d06069e87e9cf5d50ed88579b76ff7c6e231ad168d4a6b24fe"

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
