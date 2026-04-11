# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.10.0/foundry-darwin-arm64.tar.gz"
      sha256 "4226b25bbaa4fdcd22163d5850755f9a7d45932fcd0c9ae02a59d4d2bc0ba8ed"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.10.0/foundry-darwin-x64.tar.gz"
      sha256 "ae999e1f0246fae1079695bb5cecad93f503e27a42610cc3091ebbc351e9e70c"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.10.0/foundry-linux-x64.tar.gz"
      sha256 "7dbbe2a8b8375f22734156b3aca71bc08be130e84611ba62ac3f3c4331cee95d"

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
