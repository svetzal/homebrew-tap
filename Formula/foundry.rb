# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.24.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.24.0/foundry-darwin-arm64.tar.gz"
      sha256 "06bd21de9ac8fbb5330511700c5173145543db552ed1ddacc96d1e4ed46bc902"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.24.0/foundry-darwin-x64.tar.gz"
      sha256 "a5a328b75855cfd349f14a6ef44276ad28bb982069aa2d7228deea927e04eb31"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.24.0/foundry-linux-x64.tar.gz"
      sha256 "b367c7b9ebd076b2ec59b007f1b10ce2187ba21c1265c3cc3bb0eead22015015"

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
