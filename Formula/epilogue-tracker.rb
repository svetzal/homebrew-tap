# typed: false
# frozen_string_literal: true

class EpilogueTracker < Formula
  desc "User-centric work management CLI using the Screenplay Pattern"
  homepage "https://epiloguetracker.ca/"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://s3.ca-central-1.amazonaws.com/epiloguetracker.ca-cli/v#{version}/et-darwin-arm64.tar.gz"
      sha256 "3f60d6609766342206c229e780396f962bf2c93895d4e005f812370f972fb188"

      def install
        bin.install "et-darwin-arm64" => "et"
      end
    end

    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/epiloguetracker.ca-cli/v#{version}/et-darwin-x64.tar.gz"
      sha256 "75da84ae82132d690a69cf169ff3c4f39c9158c1531cdbf9040a9099280b4e06"

      def install
        bin.install "et-darwin-x64" => "et"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/epiloguetracker.ca-cli/v#{version}/et-linux-x64.tar.gz"
      sha256 "cfd6090e287134f98ecda65470fac458c131438421c49b3492121577e658abb6"

      def install
        bin.install "et-linux-x64" => "et"
      end
    end
  end

  test do
    assert_match "et v#{version}", shell_output("#{bin}/et --version")
  end
end
