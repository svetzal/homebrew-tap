# typed: false
# frozen_string_literal: true

class Mailctl < Formula
  desc "Personal email operations CLI — search, read, receipts, inbox management"
  homepage "https://github.com/svetzal/mailctl-cli"
  version "2.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/mailctl-cli/releases/download/v#{version}/mailctl-darwin-arm64.tar.gz"
      sha256 "7d57b85af32842fda41f592dd8dcbd0fb12bfbd04efbe160b8c7a58f79f84a62"

      def install
        bin.install "mailctl-darwin-arm64" => "mailctl"
      end
    end

    on_intel do
      url "https://github.com/svetzal/mailctl-cli/releases/download/v#{version}/mailctl-darwin-x64.tar.gz"
      sha256 "dc6a10bcb2842c092df96b077d4e6db36ce09f9335942c79bbb9df7652c610da"

      def install
        bin.install "mailctl-darwin-x64" => "mailctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/mailctl-cli/releases/download/v#{version}/mailctl-linux-x64.tar.gz"
      sha256 "ea6281d9d056d3dab0399794bfb8922d5b4cded3c90f69101b9445ed9f910d79"

      def install
        bin.install "mailctl-linux-x64" => "mailctl"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mailctl --version")
  end
end
