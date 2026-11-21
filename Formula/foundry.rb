# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.62.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.62.0/foundry-darwin-arm64.tar.gz"
      sha256 "6881a9c20d7494a7325931a0cee2fcf42e7ed98de984571913382c56cc165d4c"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.62.0/foundry-darwin-x64.tar.gz"
      sha256 "ee447ec4f421005f7a2b257a92b0c89f2cb290342c31f51e2773641c2957b1f3"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.62.0/foundry-linux-x64.tar.gz"
      sha256 "dcbcd4a5bc0bb3a6584f67cfb00c54916a948ab681b1cd0fa7ce745e2d2d06ef"

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
