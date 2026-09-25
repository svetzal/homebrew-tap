# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.39.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.39.2/foundry-darwin-arm64.tar.gz"
      sha256 "3e0ee6f836fc5ebad9057c447b771bd04f637c4c11f75d19a6c1862ad041ad05"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.39.2/foundry-darwin-x64.tar.gz"
      sha256 "e51ed676fe9fe8c1ffcd744e7d676c0fdc6afc609a0b5a1c0443c7443d05217f"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.39.2/foundry-linux-x64.tar.gz"
      sha256 "b5185035817c5fd803744961fc369bea0add926df8fdb66f9d9cf55f2b4f8d51"

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
