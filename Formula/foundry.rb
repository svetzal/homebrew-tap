# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.20.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.20.0/foundry-darwin-arm64.tar.gz"
      sha256 "85cf3acbd05fbd306f173789c45be957447c475f96011afbeb4826a3c4765b96"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.20.0/foundry-darwin-x64.tar.gz"
      sha256 "62ba2dc4db8f88cbee6513f341b97febf22a0d7520e5f7438c49fb545333bbf2"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.20.0/foundry-linux-x64.tar.gz"
      sha256 "64322d3348640f4eef32fe65b8972b2af54b4fb430050424c60e87d16105c5e6"

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
