# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.10.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.10.2/foundry-darwin-arm64.tar.gz"
      sha256 "e2ee299614de06f4fe54fa137a99ccd5513d3b3239ef824559c724d7bd486525"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.10.2/foundry-darwin-x64.tar.gz"
      sha256 "6f58bd9fb392e9338d036b27afe0decad37685535a0ff8f6a9630eef0536454d"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.10.2/foundry-linux-x64.tar.gz"
      sha256 "1bf68ccecfc1d2321c3d38889ae87c7c356ed25c723384450d089f808a0d193e"

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
