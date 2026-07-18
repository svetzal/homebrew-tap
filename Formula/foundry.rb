# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.29.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.29.3/foundry-darwin-arm64.tar.gz"
      sha256 "cd10ebf4595399ab6d31d7df44102da85f43787620c53c90f6f8375ea9d9dca6"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.29.3/foundry-darwin-x64.tar.gz"
      sha256 "4df9d12b90606cb2e2b6af6b180b136a9de6e2fe08ac501fd5cc3691d776f675"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.29.3/foundry-linux-x64.tar.gz"
      sha256 "e0426c88cc08439dc3d92a8f61451e88e9451a911dc57cd2fdfb6fb8667773d5"

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
