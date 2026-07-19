# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.30.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.30.0/foundry-darwin-arm64.tar.gz"
      sha256 "06feb05460b73f92b59e987dae46be802354781ffb1dcbf28211e466e59ef6d3"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.30.0/foundry-darwin-x64.tar.gz"
      sha256 "5b5e71efb2edf90d53211985ebbe7cc4da2a3cf1659ddbd2cade78c21a17b007"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.30.0/foundry-linux-x64.tar.gz"
      sha256 "8eb579d2d95ade254eaf98f32a6b45c7d3844939711a4947ce0eedb243d36171"

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
