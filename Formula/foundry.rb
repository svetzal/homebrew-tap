# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.19.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.19.0/foundry-darwin-arm64.tar.gz"
      sha256 "d74c10f023181ff5308985b151d95fda7c1f2f8031d2d4327094238a0069e7be"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.19.0/foundry-darwin-x64.tar.gz"
      sha256 "d1df599888382cb8a6cc24a57d45d0399074cc224ea368e938f4396cfa9d14a7"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.19.0/foundry-linux-x64.tar.gz"
      sha256 "55c4c479613623acf5cd8746241f8275ca1f9373d9568b2a7517944101a9cdd1"

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
