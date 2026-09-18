# typed: false
# frozen_string_literal: true

class EpilogueTracker < Formula
  desc "User-centric work management CLI using the Screenplay Pattern"
  homepage "https://epiloguetracker.ca/"
  version "1.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://s3.ca-central-1.amazonaws.com/epiloguetracker.ca-cli/v#{version}/et-darwin-arm64.tar.gz"
      sha256 "4175a61d91ee5436a012661dbf746b032a6d2fe376dffee3d9cdf86cae58cbc7"

      def install
        bin.install "et-darwin-arm64" => "et"
      end
    end

    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/epiloguetracker.ca-cli/v#{version}/et-darwin-x64.tar.gz"
      sha256 "84de03b4a018abd686c037e67fcf5c08cd1aac422cad7dcabab1616ab6c8f90c"

      def install
        bin.install "et-darwin-x64" => "et"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/epiloguetracker.ca-cli/v#{version}/et-linux-x64.tar.gz"
      sha256 "69c1b44e8a82e5f234983d79b94062f06d2e0d83e02515b56a85299a47dfd910"

      def install
        bin.install "et-linux-x64" => "et"
      end
    end
  end

  test do
    assert_match "et v#{version}", shell_output("#{bin}/et --version")
  end
end
