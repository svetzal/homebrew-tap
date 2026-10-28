# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.59.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.59.0/foundry-darwin-arm64.tar.gz"
      sha256 "dbb9eb60afcb8ada28064e3f59820fa585a66d73b339cfceb07a48ee6dce1764"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.59.0/foundry-darwin-x64.tar.gz"
      sha256 "ff22a1e4005a761e07a5d9557029d83921e661235440409ec04f798d0ed488cf"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.59.0/foundry-linux-x64.tar.gz"
      sha256 "9f87abf6ef5fe56efa3d52774cb705748f0843600fd1fd14c80667cb0f210d53"

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
