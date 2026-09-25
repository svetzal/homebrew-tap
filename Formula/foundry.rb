# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.39.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.39.1/foundry-darwin-arm64.tar.gz"
      sha256 "556fbb4b79fa26eff6859035220ddcecf19b5bb48ea921235e447f1f0c867a4f"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.39.1/foundry-darwin-x64.tar.gz"
      sha256 "604996a3126079c3955cd85e5ad06550eae1b86d4eaa883753cd3fdc4f4065e5"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.39.1/foundry-linux-x64.tar.gz"
      sha256 "44c3ae92f1929caad358a5303689bfb99c5511f6f4340848ec043f7e8befffa0"

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
