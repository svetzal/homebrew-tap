# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.37.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.37.0/foundry-darwin-arm64.tar.gz"
      sha256 "820e5bef4660cf889ea80b5e2a324b4a1ed1184e298a524edbd37d54ddc5ae89"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.37.0/foundry-darwin-x64.tar.gz"
      sha256 "6d54380fa3f35b2b1fd4ae5b3f97f7ecad9f314f07311baea1a6ef3fa05e801b"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.37.0/foundry-linux-x64.tar.gz"
      sha256 "e878037aada53f6332b19fb7d01c8d3e1ade555d8ec439efe6b8aa7ace13d2b5"

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
