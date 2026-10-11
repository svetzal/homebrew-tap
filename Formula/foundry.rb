# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.44.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.44.2/foundry-darwin-arm64.tar.gz"
      sha256 "91f8589d2ba2467abdea662c76c7649421bff430c419ae12350054ce5be3696b"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.44.2/foundry-darwin-x64.tar.gz"
      sha256 "e2eda93a48ba04b850125ef70823ac8502fe42280f3ac885b86e366325f21893"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.44.2/foundry-linux-x64.tar.gz"
      sha256 "f8f6eeb2bd2f080898af6766ea1a94fab099b4219d933874365b9a67f50f76fd"

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
