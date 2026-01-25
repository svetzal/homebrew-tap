# typed: false
# frozen_string_literal: true

class EpilogueTracker < Formula
  desc "User-centric work management CLI using the Screenplay Pattern"
  homepage "https://svetzal.github.io/epilogue-tracker/"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/epilogue-tracker/releases/download/v#{version}/et-darwin-arm64"
      sha256 "c4da568fecc163b2481fff7aaa3ed3627d97d935e9ef08aaa3a1faa77cebbb3c"

      def install
        bin.install "et-darwin-arm64" => "et"
      end
    end

    on_intel do
      url "https://github.com/svetzal/epilogue-tracker/releases/download/v#{version}/et-darwin-x64"
      sha256 "e8c5f25ef687294b565d0cc18e0c6b661d061cf345401400fa9efb84a53f2033"

      def install
        bin.install "et-darwin-x64" => "et"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/epilogue-tracker/releases/download/v#{version}/et-linux-x64"
      sha256 "59220c5027161e4d8d4aed58cc39ea39f07a1bd2b69caefbf71b4e3ae08bb4d8"

      def install
        bin.install "et-linux-x64" => "et"
      end
    end
  end

  test do
    assert_match "et v#{version}", shell_output("#{bin}/et --version")
  end
end
