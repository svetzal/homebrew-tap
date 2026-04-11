# typed: false
# frozen_string_literal: true

class Mailctl < Formula
  desc "Personal email operations CLI — search, read, receipts, inbox management"
  homepage "https://github.com/svetzal/mailctl-cli"
  version "1.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/mailctl-cli/releases/download/v#{version}/mailctl-darwin-arm64.tar.gz"
      sha256 "dfee53aa98b5ecd753e3afd953b0fe063eb73b94a25c40cba4fec968f09d0c50"

      def install
        bin.install "mailctl-darwin-arm64" => "mailctl"
      end
    end

    on_intel do
      url "https://github.com/svetzal/mailctl-cli/releases/download/v#{version}/mailctl-darwin-x64.tar.gz"
      sha256 "baf5310883c51881849a4492390df1993de19450cdbb918344a9ec62fc476c0c"

      def install
        bin.install "mailctl-darwin-x64" => "mailctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/mailctl-cli/releases/download/v#{version}/mailctl-linux-x64.tar.gz"
      sha256 "f872c7dfd51fdc4afdf957b1651461255a0a4d0df6b0c86e2c66d07f69d4e67c"

      def install
        bin.install "mailctl-linux-x64" => "mailctl"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mailctl --version")
  end
end
