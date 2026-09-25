# typed: false
# frozen_string_literal: true

class Foundry < Formula
  desc "Event-driven workflow engine for engineering automation"
  homepage "https://github.com/svetzal/foundry"
  version "0.39.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/foundry/releases/download/v0.39.5/foundry-darwin-arm64.tar.gz"
      sha256 "76a6cf99162a9be2fbf3920034f8c9c626335160c6fe882d1c35610e1c766ed3"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end

    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.39.5/foundry-darwin-x64.tar.gz"
      sha256 "0c2df3108e28cac6ca0a6f93c8d1772ed0843e1070cbcbf57c03559d010baab2"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/foundry/releases/download/v0.39.5/foundry-linux-x64.tar.gz"
      sha256 "aec99edb686a1e42711ed1f241c64eadf4c7e020817e5041b3598544238e52db"

      def install
        bin.install "foundry"
        bin.install "foundryd"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/foundry --version")
  end
end
