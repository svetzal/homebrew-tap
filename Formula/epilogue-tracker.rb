# typed: false
# frozen_string_literal: true

class EpilogueTracker < Formula
  desc "User-centric work management CLI using the Screenplay Pattern"
  homepage "https://svetzal.github.io/epilogue-tracker/"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/epilogue-tracker/releases/download/v#{version}/et-darwin-arm64"
      sha256 "e8ed926badd716907a5ce08f77500971f0c0995fdaca7890cfbabd70824523f9"

      def install
        bin.install "et-darwin-arm64" => "et"
      end
    end

    on_intel do
      url "https://github.com/svetzal/epilogue-tracker/releases/download/v#{version}/et-darwin-x64"
      sha256 "b0ea9e14f0bce35b980c31963e1e8834d5684fdfdac30e9d0302e24d14b696f4"

      def install
        bin.install "et-darwin-x64" => "et"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/epilogue-tracker/releases/download/v#{version}/et-linux-x64"
      sha256 "dca205218a83d5d2be06f4db323c23843ff48374b0c3bc70b92b7b094a2ddb53"

      def install
        bin.install "et-linux-x64" => "et"
      end
    end
  end

  test do
    assert_match "et v#{version}", shell_output("#{bin}/et --version")
  end
end
