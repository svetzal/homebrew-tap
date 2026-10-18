# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.54.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.54.1/foundry-darwin-arm64.tar.gz"
      sha256 "7ca5f5f73c0ec414f9dd88ac14ef04e2029e80c718ea07d6be163285d50e0834"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.54.1/foundry-darwin-x64.tar.gz"
      sha256 "ca774362ed37207b940ed3a4fe2627d8b62c029f16048eb371292a6fba104f0c"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.54.1/foundry-linux-x64.tar.gz"
      sha256 "5df5414665502851c72bb5de6d7de636aa0e31b12ce02381eb9064743e3cc4ce"

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
