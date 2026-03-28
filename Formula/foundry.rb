# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.5.0/foundry-darwin-arm64.tar.gz"
      sha256 "46a34e676d99a545796676f7d7a030dd14b67144cb1c4f48af463cc1ab3d24bd"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.5.0/foundry-darwin-x64.tar.gz"
      sha256 "253fe7cc75917bb12243cbcfc30e4708e4acbad180848f184210414317d3d8d0"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.5.0/foundry-linux-x64.tar.gz"
      sha256 "9e3af4c30c7e8de8e15a575c8dd4d09f7fe44ef0f120d3f871b72524b620b66f"

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
