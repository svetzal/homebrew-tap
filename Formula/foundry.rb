# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.14.0/foundry-darwin-arm64.tar.gz"
      sha256 "2fa9d55eab9ddca7e117821a2814a01c4a4442b14add0d6fab09d27284a2e9ca"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.14.0/foundry-darwin-x64.tar.gz"
      sha256 "921dd5dcdab4c22671588491c540005113788f65cd6c1ad68e6e1bc64f9f1b65"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.14.0/foundry-linux-x64.tar.gz"
      sha256 "c4c85a4fe4a07fbd103c3a5b98e83f4eb8cfda632dd2b277950c3106ac77aaa6"

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
