# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

REPO_URL="https://github.com/Masumi-M/clock".freeze
LIB_VER="0.0.1".freeze

class Clock < Formula
  desc "A homebrew library that tells time right now."
  homepage "https://www.umi-mori.jp"
  url "#{REPO_URL}/archive/#{LIB_VER}.tar.gz"
  sha256 "5a8509b07f96fdba66056121ebfe153476e7a4e6cdd1e51dce98567c16bd329d"
  head "#{REPO_URL}.git", :tag => LIB_VER
  # depends_on "cmake" => :build

  def install
    system "===== Install Started. ====="
    bin.install "bin/clock"
    system "===== Install Completed. ====="
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test clock`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
