# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Toolset < Formula
  desc "Toolset helps to keep a project-specific tools"
  homepage "https://github.com/kazhuravlev/toolset"
  version "0.25.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazhuravlev/toolset/releases/download/v0.25.2/toolset_Darwin_arm64.tar.gz"
      sha256 "605753616a1dd7aace4567a69c056fd30f0358ebbf0e8ee17bb09dafb7d6357b"

      def install
        bin.install "toolset"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kazhuravlev/toolset/releases/download/v0.25.2/toolset_Linux_arm64.tar.gz"
        sha256 "a73189154d851ac52124f5d8535b682339d3c7bf0a1a41b3ad1df3b36d6b5e1e"

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
