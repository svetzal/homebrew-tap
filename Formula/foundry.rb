# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.58.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.58.2/foundry-darwin-arm64.tar.gz"
      sha256 "3f47cace9da315f591b6cf06385d5569fcca38720c5290360921b054dfa3b3f0"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.58.2/foundry-darwin-x64.tar.gz"
      sha256 "581c7cf5a2ccdd32124e584be24df1c6548991a12726f43b31b8d867098c77f3"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.58.2/foundry-linux-x64.tar.gz"
      sha256 "9ab651ee62f9c7a411e94a60bbedec20104578d8f105ebdf32ef3b4a8b8dd9c7"

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
