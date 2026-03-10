# typed: false
# frozen_string_literal: true

class Parite < Formula
  desc "NNTP/Usenet client and NZB search tool with media library management"
  homepage "https://github.com/svetzal/parite-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.2.0/parite-darwin-arm64.tar.gz"
      sha256 "4604b27d5c31227f0e53aa468b14078b3301ce5fbbd7e781a9a15fddd5dbdb8c"

      def install
        bin.install "parite-cli" => "parite"
      end
    end

    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.2.0/parite-darwin-x64.tar.gz"
      sha256 "e93c2dcdd8b329a6a704f890be3e52cf9fed541b78748fb4a79f252358907515"

      def install
        bin.install "parite-cli" => "parite"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.2.0/parite-linux-x64.tar.gz"
      sha256 "d268a79436ba2e2ab1ee2ecd9c5ed8850aafe35125ec9b17a2ff6e924278c29e"

      def install
        bin.install "parite-cli" => "parite"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/parite --version")
  end
end
