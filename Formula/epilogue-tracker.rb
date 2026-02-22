# typed: false
# frozen_string_literal: true

class EpilogueTracker < Formula
  desc "User-centric work management CLI using the Screenplay Pattern"
  homepage "https://epiloguetracker.ca/"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://s3.ca-central-1.amazonaws.com/epiloguetracker.ca-cli/v#{version}/et-darwin-arm64.tar.gz"
      sha256 "16c3a92566450d24ddfec527ad9859577d683a72c3d18a2f01427f3487479ee3"

      def install
        bin.install "et-darwin-arm64" => "et"
      end
    end

    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/epiloguetracker.ca-cli/v#{version}/et-darwin-x64.tar.gz"
      sha256 "6b401c4bd05e22c5699501cd6a377716f295be496a6ce3e03155c9b64fff22a5"

      def install
        bin.install "et-darwin-x64" => "et"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/epiloguetracker.ca-cli/v#{version}/et-linux-x64.tar.gz"
      sha256 "3e5b658040a988068044ec01091c6ee22998be37df8a947ee65a46b62cad9e4f"

      def install
        bin.install "et-linux-x64" => "et"
      end
    end
  end

  test do
    assert_match "et v#{version}", shell_output("#{bin}/et --version")
  end
end
