# typed: false
# frozen_string_literal: true

class EpilogueTracker < Formula
  desc "User-centric work management CLI using the Screenplay Pattern"
  homepage "https://svetzal.github.io/epilogue-tracker/"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/epilogue-tracker/releases/download/v#{version}/et-darwin-arm64"
      sha256 "efdd33b2c558a808ede43e583dc493ee87116359e3a733015285862f173b52fe"

      def install
        bin.install "et-darwin-arm64" => "et"
      end
    end

    on_intel do
      url "https://github.com/svetzal/epilogue-tracker/releases/download/v#{version}/et-darwin-x64"
      sha256 "c7d11ee6e04e96f9fe6daab54a557ef5ed39c606ea98608ec14cd332d0abbcb3"

      def install
        bin.install "et-darwin-x64" => "et"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/epilogue-tracker/releases/download/v#{version}/et-linux-x64"
      sha256 "4cddf38965e3db26050da0fd5cd61647dc3ad6aae642965fbf31df78309b7af4"

      def install
        bin.install "et-linux-x64" => "et"
      end
    end
  end

  test do
    assert_match "et v#{version}", shell_output("#{bin}/et --version")
  end
end
