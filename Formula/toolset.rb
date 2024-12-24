# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Toolset < Formula
  desc "Toolset helps to keep a project-specific tools"
  homepage "https://github.com/kazhuravlev/toolset"
  version "0.23.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazhuravlev/toolset/releases/download/v0.23.0/toolset_Darwin_arm64.tar.gz"
      sha256 "7a084f1514dfd4b6e75557038c0804a3df369b21d3420428759a9373d2cb4193"

      def install
        bin.install "toolset"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kazhuravlev/toolset/releases/download/v0.23.0/toolset_Linux_arm64.tar.gz"
        sha256 "1e2603ba55a16442e2d8df4a39c7ee43800706b01a1570e5b5b224709926b275"

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
