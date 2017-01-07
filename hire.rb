# Documentation: https://github.com/Homebrew/brew/blob/master/docs/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Hire < Formula
  desc "cli for software brief proposal"
  homepage "https://github.com/hafizio/hire"
  url "https://github.com/hafizio/hire/archive/v0.0.1.tar.gz"
  version "0.1.1"
  sha256 "9fa0e3246791188567d1f0f49f5c7889cbd200f6af606967f86f4775c235d844"
  head "https://github.com/hafizio/hire.git"

  depends_on "crystal-lang" => :build
  depends_on "libevent"
  depends_on "bdw-gc"

  def install
    system "crystal", "deps"
    system "crystal", "build", "--release", "hire.cr"

    bin.install "hire"
  end

  test do
    system "hire", "--version"
  end

  test do
    system "false"
  end
end
