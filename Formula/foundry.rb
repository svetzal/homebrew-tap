# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.50.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.50.2/foundry-darwin-arm64.tar.gz"
      sha256 "690ec7bccb3af12fc798c4cf359c52492fe12a9b51166dad5933608252149e9c"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.50.2/foundry-darwin-x64.tar.gz"
      sha256 "ce69e2fcb2bc5fdb6314331e88954c42bf36b121ccccc813ce73175f18611a24"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.50.2/foundry-linux-x64.tar.gz"
      sha256 "f61f94b93c454c08de5e0d17e84f556845b280d7b73de6ea5a2ff21063749e02"

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
