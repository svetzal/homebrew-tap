# typed: false
# frozen_string_literal: true

class Mailctl < Formula
  desc "Personal email operations CLI — search, read, receipts, inbox management"
  homepage "https://github.com/svetzal/mailctl-cli"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/mailctl-cli/releases/download/v#{version}/mailctl-darwin-arm64.tar.gz"
      sha256 "2d0a1225a1e51baba9af3f1654a52c5e5e583466e01a343e5b00c88870059291"

      def install
        bin.install "mailctl-darwin-arm64" => "mailctl"
      end
    end

    on_intel do
      url "https://github.com/svetzal/mailctl-cli/releases/download/v#{version}/mailctl-darwin-x64.tar.gz"
      sha256 "ecd80cc8976bf1b7560ded196e39448a09af2c9dad7fdfe7d14526cfe64e0c7e"

      def install
        bin.install "mailctl-darwin-x64" => "mailctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/mailctl-cli/releases/download/v#{version}/mailctl-linux-x64.tar.gz"
      sha256 "dd77e0cc3f537f4bde762d1b648534c087cd57eafccfd245791e15a4a530c6eb"

      def install
        bin.install "mailctl-linux-x64" => "mailctl"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mailctl --version")
  end
end
