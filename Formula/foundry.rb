# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.50.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.50.0/foundry-darwin-arm64.tar.gz"
      sha256 "967e945d22af26fab0bbd822f42eac85e9fa8863c8413d9024019096c955f3cc"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.50.0/foundry-darwin-x64.tar.gz"
      sha256 "15e95fe9563841e059c88cb7c12ca004f1260e987f95c79ca18ed689845d9d11"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.50.0/foundry-linux-x64.tar.gz"
      sha256 "ec2bfc5e19fc6aad9e4444e25621de10372debe27c80c46de77a5747d1fa83bc"

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
