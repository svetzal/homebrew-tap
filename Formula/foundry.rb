# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.27.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.27.0/foundry-darwin-arm64.tar.gz"
      sha256 "e697fda7ddb38a3a9177574699f2b91dce4192ca7de2d2deeca294437fe676ee"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.27.0/foundry-darwin-x64.tar.gz"
      sha256 "d0b9d140e411e6e100c402b283d01f99bf267d68496a1842cd77d76957f368b5"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.27.0/foundry-linux-x64.tar.gz"
      sha256 "a1e6776db05b8c2d59f6db9a06133d93507e2b52c13848100349f14b6b1978ee"

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
