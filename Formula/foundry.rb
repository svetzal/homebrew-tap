# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.44.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.44.0/foundry-darwin-arm64.tar.gz"
      sha256 "05694cedeec6ef7186e490ec27d03c11729806692157faf2431a638f9955d1c4"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.44.0/foundry-darwin-x64.tar.gz"
      sha256 "c482102743bc01f117bb4fc28ded5908fcd6f25e16264a06f037e45fa14721c4"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.44.0/foundry-linux-x64.tar.gz"
      sha256 "ffeacb841505a197776416a952259328fc767e071f3f97a153623e5061a50294"

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
