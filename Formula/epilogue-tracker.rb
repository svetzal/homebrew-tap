# typed: false
# frozen_string_literal: true

class EpilogueTracker < Formula
  desc "User-centric work management CLI using the Screenplay Pattern"
  homepage "https://epiloguetracker.ca/"
  version "0.8.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://s3.ca-central-1.amazonaws.com/epiloguetracker.ca-cli/v#{version}/et-darwin-arm64.tar.gz"
      sha256 "92345f0b5a1335820262ffef7e72c77928d14746523f0519dc56f9349f2d0fe0"

      def install
        bin.install "et-darwin-arm64" => "et"
      end
    end

    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/epiloguetracker.ca-cli/v#{version}/et-darwin-x64.tar.gz"
      sha256 "6ad282d7568ca3ea0f830d1cabaaebbdac4008cd4cfc28ef5fa2ae9dfd30e697"

      def install
        bin.install "et-darwin-x64" => "et"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/epiloguetracker.ca-cli/v#{version}/et-linux-x64.tar.gz"
      sha256 "1543e64ac9f286b36ac0612a19939b08693f5acaa033b639ccb6ed09adaf2706"

      def install
        bin.install "et-linux-x64" => "et"
      end
    end
  end

  test do
    assert_match "et v#{version}", shell_output("#{bin}/et --version")
  end
end
