# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.28.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.28.0/foundry-darwin-arm64.tar.gz"
      sha256 "b6ec766c8e16368261054851c58697bdc492589f265a68c5868e110e20970d7a"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.28.0/foundry-darwin-x64.tar.gz"
      sha256 "858cf70a83c4af591f6a0ff4eb67c1caf389919c558060b2bc3d363d5c7f4fe6"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.28.0/foundry-linux-x64.tar.gz"
      sha256 "e45be8c5e48b2075e93bc73bc10b385fd02f260fa4993abd61ab210f0d298206"

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
