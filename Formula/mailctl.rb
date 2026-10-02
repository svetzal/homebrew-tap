# typed: false
# frozen_string_literal: true

class Mailctl < Formula
  desc "Personal email operations CLI — search, read, receipts, inbox management"
  homepage "https://github.com/svetzal/mailctl-cli"
  version "2.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/mailctl-cli/releases/download/v#{version}/mailctl-darwin-arm64.tar.gz"
      sha256 "81851c9333a21eb70f2cf887b9121a0961a4223172f2ebad2a786ca08fb3fc1d"

      def install
        bin.install "mailctl-darwin-arm64" => "mailctl"
      end
    end

    on_intel do
      url "https://github.com/svetzal/mailctl-cli/releases/download/v#{version}/mailctl-darwin-x64.tar.gz"
      sha256 "ffb7bbcf7c43388dad8fbefda9a506d2c61fc20a04b4122807cf88f28a98431c"

      def install
        bin.install "mailctl-darwin-x64" => "mailctl"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/mailctl-cli/releases/download/v#{version}/mailctl-linux-x64.tar.gz"
      sha256 "87acc7f7e01856faeb1ce10c6f3290724a7d5a8ef6fc86f79934306805364424"

      def install
        bin.install "mailctl-linux-x64" => "mailctl"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mailctl --version")
  end
end
