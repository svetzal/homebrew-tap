# typed: false
# frozen_string_literal: true

class EpilogueTracker < Formula
  desc "User-centric work management CLI using the Screenplay Pattern"
  homepage "https://svetzal.github.io/epilogue-tracker/"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/svetzal/epilogue-tracker/releases/download/v#{version}/et-darwin-arm64"
      sha256 "b13a871635658c9fb810559e0e16fc98ce3d5ea35c5758a1c097e8ebfb2f3ec8"

      def install
        bin.install "et-darwin-arm64" => "et"
      end
    end

    on_intel do
      url "https://github.com/svetzal/epilogue-tracker/releases/download/v#{version}/et-darwin-x64"
      sha256 "dee3ce01e1fef426f6a813031ae4240bf9343f77d1deb25d90e425dc27132dbe"

      def install
        bin.install "et-darwin-x64" => "et"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/svetzal/epilogue-tracker/releases/download/v#{version}/et-linux-x64"
      sha256 "9c8ea9294f1778eb1a8a3211b52d07fb8346fc485f359a92be568240a4d1b1e6"

      def install
        bin.install "et-linux-x64" => "et"
      end
    end
  end

  test do
    assert_match "et v#{version}", shell_output("#{bin}/et --version")
  end
end
