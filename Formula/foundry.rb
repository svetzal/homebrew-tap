# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.41.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.41.1/foundry-darwin-arm64.tar.gz"
      sha256 "4181b387083ddec34a40a055c375ccf91023866b2f9ce3a318659946cedae3bf"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.41.1/foundry-darwin-x64.tar.gz"
      sha256 "63488af148a339c2c806d8afadc20cb499c7a24682466c13a06a23a345bc9573"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.41.1/foundry-linux-x64.tar.gz"
      sha256 "1bed05b72e700d0d429b5fefaa5552190a5f1b535012928be02ea951ddc3d614"

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
