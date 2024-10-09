# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Toolset < Formula
  desc "Toolset helps to keep a project-specific tools"
  homepage "https://github.com/kazhuravlev/toolset"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazhuravlev/toolset/releases/download/v0.12.0/toolset_Darwin_arm64.tar.gz"
      sha256 "b81d76073d6169808770c1f283d65597ba5d7952c8a23215ef00920fa9d7012d"

      def install
        bin.install "toolset"
      end
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kazhuravlev/toolset/releases/download/v0.12.0/toolset_Linux_arm64.tar.gz"
        sha256 "c5644dbe005454806fc1a5d3d7ed0ba5e454076ef439fc4cb103d9eb93772840"

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
