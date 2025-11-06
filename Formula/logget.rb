# typed: false
# frozen_string_literal: true

class Logget < Formula
  desc "Command-line tool to extract browser logs and network data from web pages"
  homepage "https://github.com/enegalan/logget"
  version "2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/enegalan/logget/releases/download/v2.2/logget-2.2-darwin-amd64.tar.gz"
      sha256 "4d902201919e6a366542ac091d57672bd9fc1d3cce2e781e915cf9bfed573dcb"

      def install
        bin.install "logget-darwin-amd64" => "logget"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/enegalan/logget/releases/download/v2.2/logget-2.2-darwin-arm64.tar.gz"
      sha256 "c881cae801fb8f201ce42838a5edf141b581b397b2aa8a4226b892b636df9e3c"

      def install
        bin.install "logget-darwin-arm64" => "logget"
      end
    end
  end

  test do
    system "#{bin}/logget", "--version"
  end
end
