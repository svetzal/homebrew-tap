# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.53.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.53.0/foundry-darwin-arm64.tar.gz"
      sha256 "5423621f58434f5aa6b06d316590ee46e48f0265596236cf2ca6228ec00ad145"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.53.0/foundry-darwin-x64.tar.gz"
      sha256 "fd0c7c2f462f6a800301f0f3ad5c349bcb132f9e49ae67d15feaa07626452687"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.53.0/foundry-linux-x64.tar.gz"
      sha256 "5b6a8f442f23dd4df93991d8702f3841630c0af7c2bb43caed9b83f23739eddb"

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
