# typed: false
# frozen_string_literal: true

class Hone < Formula
  desc "Iterative codebase quality improvement CLI using Claude agents"
  homepage "https://github.com/svetzal/hone-cli"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/hone-cli/releases/download/v1.2.0/hone-darwin-arm64.tar.gz"
      sha256 "06b957f5863fefaf7f102a61b297e96b8d3baa1dc58da2547789a4645d0f84da"

      def install
        bin.install "hone-darwin-arm64" => "hone"
      end
    end

    on_intel do
      url "https://github.com/svetzal/hone-cli/releases/download/v1.2.0/hone-darwin-x64.tar.gz"
      sha256 "43c36f4fbb5c4d4eceef0808008dbd9711a46983155296c86e5335dd656dfb01"

      def install
        bin.install "hone-darwin-x64" => "hone"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/hone-cli/releases/download/v1.2.0/hone-linux-x64.tar.gz"
      sha256 "47f98b7d519694ac852a4530e40723cf1f3bb03c85156aa309e89d082eb26f6f"

      def install
        bin.install "hone-linux-x64" => "hone"
      end
    end
  end

  test do
    assert_match "hone v#{version}", shell_output("#{bin}/hone --version")
  end
end
