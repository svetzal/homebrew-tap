# typed: false
# frozen_string_literal: true

class Parite < Formula
  desc "NNTP/Usenet client and NZB search tool with media library management"
  homepage "https://github.com/svetzal/parite-cli"
  version "0.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.15.0/parite-darwin-arm64.tar.gz"
      sha256 "9681295a06673adc96b84fce9a5dd85ec68ae30bc105f3d9eae0658853fb1e5b"

      def install
        bin.install "parite"
        bin.install "parited"
        bin.install "parite-converterd"
      end
    end

    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.15.0/parite-darwin-x64.tar.gz"
      sha256 "6b93aa5084779afb9919c45ce5ba81554643cfb3ddb62b5c1243ce04282d8055"

      def install
        bin.install "parite"
        bin.install "parited"
        bin.install "parite-converterd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://s3.ca-central-1.amazonaws.com/parite-releases/v0.15.0/parite-linux-x64.tar.gz"
      sha256 "95bc521d287e18c2b60ec7bffdd6d42f77b48ab463ba4916579bd4b9881733b9"

      def install
        bin.install "parite"
        bin.install "parited"
        bin.install "parite-converterd"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/parite --version")
    assert_match version.to_s, shell_output("#{bin}/parited --version")
    assert_match version.to_s, shell_output("#{bin}/parite-converterd --version")
  end
end
