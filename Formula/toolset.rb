# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Toolset < Formula
  desc "Toolset helps to keep a project-specific tools"
  homepage "https://github.com/kazhuravlev/toolset"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazhuravlev/toolset/releases/download/v0.13.0/toolset_Darwin_arm64.tar.gz"
      sha256 "2e17551632465a129cd7171882756b125ebbcf3ccb67ef2fbf1981bcd4dd99e9"

      def install
        bin.install "toolset"
      end
    end
  end

  on_linux do
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kazhuravlev/toolset/releases/download/v0.13.0/toolset_Linux_arm64.tar.gz"
        sha256 "f63b7844e43ebd9f78f0e22b866406cee925c03ae00b9ce8cc84f5f4a2de3c6f"

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
