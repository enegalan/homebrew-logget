# typed: false
# frozen_string_literal: true

class Logget < Formula
  desc "Command-line tool to extract browser logs and network data from web pages"
  homepage "https://github.com/enegalan/logget"
  version "2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enegalan/logget/releases/download/v2.3/logget-2.3-darwin-amd64.tar.gz"
      sha256 "9ae51d194b41c09022990b79590be5f24e1c2ea10d9157f323bcb6bda668f743"

      def install
        bin.install "logget-darwin-amd64" => "logget"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/enegalan/logget/releases/download/v2.3/logget-2.3-darwin-arm64.tar.gz"
      sha256 "3e2018529c44a62b39a0a6dea54b285bdb1da852ebfa384d3731dd03e3e534c9"

      def install
        bin.install "logget-darwin-arm64" => "logget"
      end
    end
  end

  test do
    system "#{bin}/logget", "--version"
  end
end
