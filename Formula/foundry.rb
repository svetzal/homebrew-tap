# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.9.0/foundry-darwin-arm64.tar.gz"
      sha256 "d33fee2f40fdbeeeee04e2c2b6aa966c4614fdda63dde9314257b095d31d78c7"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.9.0/foundry-darwin-x64.tar.gz"
      sha256 "f46aa5cf5f0ef3658e0d86d2e0108325990f1de360b669a00096af1c22dbfdc1"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.9.0/foundry-linux-x64.tar.gz"
      sha256 "56d1b9adfab587958e617c88577748211cffb4324d367676bfb1d3827788b663"

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
