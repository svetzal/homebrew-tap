# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.12.0/foundry-darwin-arm64.tar.gz"
      sha256 "e3a0fc5431f77d062725aa668b9c9dcb558419a8584c98037485f9150f09f878"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.12.0/foundry-darwin-x64.tar.gz"
      sha256 "9bff418ce9d477ff694d68e5dd05d42428f785f4cee92a95fb951fd5e6e7dbeb"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.12.0/foundry-linux-x64.tar.gz"
      sha256 "4e9bf38468b77161b0207bfc0c9f90c124917b5b68223538a1f21126fdda8b2a"

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
