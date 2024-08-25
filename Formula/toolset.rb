# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Toolset < Formula
  desc "Toolset helps to keep a project-specific tools"
  homepage "https://github.com/kazhuravlev/toolset"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazhuravlev/toolset/releases/download/v0.1.2/toolset_Darwin_arm64.tar.gz"
      sha256 "f39b5288134c3eab81cd55359c2f9151bfdc858422dd98b227b0075ab8ebe017"

      def install
        bin.install "toolset"
      end
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kazhuravlev/toolset/releases/download/v0.1.2/toolset_Linux_arm64.tar.gz"
        sha256 "6f4f403b79fde3c92a1accb6acaf7a2e896f6ec88065a8ee0b35fb9ae5b7f7b0"

        def install
          bin.install "toolset"
        end
      end
    end
  end

  test do
    system "#{bin}/toolset help"
  end
end