# typed: false
# frozen_string_literal: true

class EpilogueTracker < Formula
  desc "User-centric work management CLI using the Screenplay Pattern"
  homepage "https://epiloguetracker.ca/"
  version "0.7.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://s3.ca-central-1.amazonaws.com/epiloguetracker.ca-cli/v#{version}/et-darwin-arm64.tar.gz"
      sha256 "c788e30fd16514cb80f91c0973e615006eb90f69558bca3799e4b549a89bde0d"

      def install
        bin.install "et-darwin-arm64" => "et"
      end
    end

    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/epiloguetracker.ca-cli/v#{version}/et-darwin-x64.tar.gz"
      sha256 "1a22f9d68bb48c2f4494e2033174dde4615334a187c5e1f761a087ead1cd44a1"

      def install
        bin.install "et-darwin-x64" => "et"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/epiloguetracker.ca-cli/v#{version}/et-linux-x64.tar.gz"
      sha256 "6188bffd820fccf904aa1316c7f7994e8a9dec2ce00221f4acc773c7ed6be36f"

      def install
        bin.install "et-linux-x64" => "et"
      end
    end
  end

  test do
    assert_match "et v#{version}", shell_output("#{bin}/et --version")
  end
end
