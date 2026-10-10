# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.41.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.41.2/foundry-darwin-arm64.tar.gz"
      sha256 "c24a7bb4fcb95e5c1f87904ba0aa52acd11c2cb4c9f93491548cb7bd05b6c0ea"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.41.2/foundry-darwin-x64.tar.gz"
      sha256 "f069cffaa066aec3ffb535e72611bec9fb8bb320b3e521d8e808634de16815c0"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.41.2/foundry-linux-x64.tar.gz"
      sha256 "be4d5e9a96a9daef3e3c6175ee063794a82e6ca0e42dd77ea10f3bf55a50cf1c"

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
