# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.38.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.38.5/foundry-darwin-arm64.tar.gz"
      sha256 "3fc7d17731218e6f93130b2c7597fa3e3d74cdbb9d8d0bf0549c5ec30931bc3c"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.38.5/foundry-darwin-x64.tar.gz"
      sha256 "2281a8d0a36c60fa80788f63cfe0fd640b2c19dcb9b55966b9016292ed02cb27"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.38.5/foundry-linux-x64.tar.gz"
      sha256 "9f52592541c61af56d5d2b59ab31d0c8e334925457849d21a823f3fd52f4c87e"

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
