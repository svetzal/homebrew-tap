# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.34.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.34.2/foundry-darwin-arm64.tar.gz"
      sha256 "dddd0da9086a44e1719df6bf497f3cfc619b91dcd070719765012f3fdc57af88"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.34.2/foundry-darwin-x64.tar.gz"
      sha256 "f4fb1d34e100eded8b00f3e22508125d8515bd113a2cb013127e6760c7b9a885"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.34.2/foundry-linux-x64.tar.gz"
      sha256 "f0022112c0bc159b315047df44ca0978dc13b7ba64cf6a76a1b2e3a74c8ec529"

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
