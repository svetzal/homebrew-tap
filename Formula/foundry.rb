# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.8.0/foundry-darwin-arm64.tar.gz"
      sha256 "72d249c3ad7b3593319144d2d96b7e4a58f9493ac76cc4b62089ce79785d8730"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.8.0/foundry-darwin-x64.tar.gz"
      sha256 "ee7a4ed8cd460a5e38ed80b329b2e7588c00f592fc9c7550d6da218d5c3aa49b"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.8.0/foundry-linux-x64.tar.gz"
      sha256 "ebff014bf523baed77fc54ed65412408173f751a730108975392489ecd02e01c"

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
