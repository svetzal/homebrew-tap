# typed: false
# frozen_string_literal: true

class Cmx < Formula
  desc "Package manager and publisher for curated agentic context — agents, skills, and plugins"
  homepage "https://github.com/svetzal/context-mixer2"
  version "3.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/context-mixer2/releases/download/v3.1.0/cmx-darwin-arm64.tar.gz"
      sha256 "dfdadfbbb575e9ada0ad26f10ebc94f5139add6acf92ff6467550558eaf37c5b"

      def install
        bin.install "cmx"
        bin.install "cmf"
      end
    end

    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v3.1.0/cmx-darwin-x64.tar.gz"
      sha256 "973fdd96bfa379bab4e45d27f63b6d55374ef2bce107be0375e5a1f45546c84e"

      def install
        bin.install "cmx"
        bin.install "cmf"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v3.1.0/cmx-linux-x64.tar.gz"
      sha256 "dd749e1952a647f5516a4c5bc3b3bc14a822fae04261104ea9ac0c87f91bd48d"

      def install
        bin.install "cmx"
        bin.install "cmf"
      end
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cmx --version")
    assert_match version.to_s, shell_output("#{bin}/cmf --version")
  end
end
