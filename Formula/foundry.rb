# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.20.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.20.0/foundry-darwin-arm64.tar.gz"
      sha256 "cbad7f3feae0e973cfbe760d140c3df0d59e6db0972386f4be1473d8a58ef2f2"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.20.0/foundry-darwin-x64.tar.gz"
      sha256 "aeefef7af510fc1d079eb822a28cc4c6c9cb5e2116a4f300619abc0ea1cf256c"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.20.0/foundry-linux-x64.tar.gz"
      sha256 "4b82d04280dfbcfc9e40f9fe9d9cb835560c3176cc8ba9c8befc2b2b58effbc9"

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
