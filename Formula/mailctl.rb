# typed: false
# frozen_string_literal: true

class Mailctl < Formula
  desc "Personal email operations CLI — search, read, receipts, inbox management"
  homepage "https://github.com/svetzal/mailctl-cli"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/mailctl-cli/releases/download/v#{version}/mailctl-darwin-arm64.tar.gz"
      sha256 "8ce9b67af355bce433a7106e71ec88a1cf9408984eb35a34e2ddf973c2502058"

      def install
        bin.install "mailctl-darwin-arm64" => "mailctl"
      end
    end

    on_intel do
      url "https://github.com/svetzal/mailctl-cli/releases/download/v#{version}/mailctl-darwin-x64.tar.gz"
      sha256 "ffce83be05e037289ac05b4d6cdacf2f9d4fc17a41c5d6bc40c703cc9d0b4e3a"

      def install
        bin.install "mailctl-darwin-x64" => "mailctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/mailctl-cli/releases/download/v#{version}/mailctl-linux-x64.tar.gz"
      sha256 "e3ba6cc1ff3f335b3e5550c58f4d4320e324cf024e4ca4cc2ff43be8173b323a"

      def install
        bin.install "mailctl-linux-x64" => "mailctl"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mailctl --version")
  end
end
