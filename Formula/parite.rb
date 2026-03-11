# typed: false
# frozen_string_literal: true

class Parite < Formula
  desc "NNTP/Usenet client and NZB search tool with media library management"
  homepage "https://github.com/svetzal/parite-cli"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.3.2/parite-darwin-arm64.tar.gz"
      sha256 "acb6b2b407339b686d8cb06dfb210295b1b19d9c5916f27c883e24d7be6329bb"

      def install
        bin.install "parite-cli" => "parite"
      end
    end

    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.3.2/parite-darwin-x64.tar.gz"
      sha256 "07dbca5444ac0295bfe95d953a64caf1d7c03670b990408cade715bdd58869ab"

      def install
        bin.install "parite-cli" => "parite"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.3.2/parite-linux-x64.tar.gz"
      sha256 "ea6b83b803d2bfd07d87685b70b0f9cc563034b0e5c39efdeaf24a41eca6381e"

      def install
        bin.install "parite-cli" => "parite"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/parite --version")
  end
end
