# typed: false
# frozen_string_literal: true

class Cmx < Formula
  desc "Package manager and publisher for curated agentic context — agents, skills, and plugins"
  homepage "https://github.com/svetzal/context-mixer2"
  version "2.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.11.0/cmx-darwin-arm64.tar.gz"
      sha256 "58716435eaeb1eac0889138f947b4947cbcc28c39011daf82f14cad3fbcd339b"

      def install
        bin.install "cmx"
        bin.install "cmf"
      end
    end

    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.11.0/cmx-darwin-x64.tar.gz"
      sha256 "bfdca8c1b503962c4d7e82d0760d14b527105f471cb7e5978bf31d17e166375b"

      def install
        bin.install "cmx"
        bin.install "cmf"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/context-mixer2/releases/download/v2.11.0/cmx-linux-x64.tar.gz"
      sha256 "368f671f1d42c3b228169a00af76fe770b17e05f2a3fbfad7d5f7ba13f9ddfbf"

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
