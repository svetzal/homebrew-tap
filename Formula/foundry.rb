# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.22.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.22.0/foundry-darwin-arm64.tar.gz"
      sha256 "ec5b9a420c7f9742ae3fd9e68398eb7ced6c58f7496da37dae908dbb5cdeedb6"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.22.0/foundry-darwin-x64.tar.gz"
      sha256 "bb86a76f8687c57f532f27e62da7f47c3192a3eb3a9855d91a5eb7e8b087b791"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.22.0/foundry-linux-x64.tar.gz"
      sha256 "66ef5843523de02c484772955d50371f6689fd8fab57065ec197f0fe4725ca10"

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
