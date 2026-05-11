# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.14.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.14.2/foundry-darwin-arm64.tar.gz"
      sha256 "d8dd2cf78a4ffaf3d6a34f9fdb675b851c60a50980f6f643e72252ef7aca12bf"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.14.2/foundry-darwin-x64.tar.gz"
      sha256 "a341b233af6e6f65efe941914c2ebd2b2d7fec6426edaeff2e164e5e63932602"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.14.2/foundry-linux-x64.tar.gz"
      sha256 "fbe6f97338f918d84c23e17ee29de955dc0ad251ce59ad927842546265615e73"

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
