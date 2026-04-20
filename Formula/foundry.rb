# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.11.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.11.1/foundry-darwin-arm64.tar.gz"
      sha256 "c3e8dbe37d2dbba83de37131bf4252483214145ae817775e573d58d6d191aa0a"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.11.1/foundry-darwin-x64.tar.gz"
      sha256 "d6a4607147c3c9d4e9a86d46af457407f3c29c829f9c4ae87eb48f8f90de77da"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.11.1/foundry-linux-x64.tar.gz"
      sha256 "d83a3e79e30a2c1c63c59677936c089c67871300d427d7c8d39a79ba3d41c716"

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
