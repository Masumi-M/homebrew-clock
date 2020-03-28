# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

REPO_URL="https://github.com/Masumi-M/clock-shell".freeze
LIB_VER="0.0.1".freeze

class ClockShell < Formula
  desc "A homebrew library that tells time right now."
  homepage "https://www.umi-mori.jp"
  url "#{REPO_URL}/archive/#{LIB_VER}.tar.gz"
  sha256 "49b8f373a52fd3137b3405e44ab58fd152b0f5203232f3f504b193ed9450f1aa"
  head "#{REPO_URL}.git", :tag => LIB_VER

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    
    bin.install "bin/clock"
    # system "cmake", ".", *std_cmake_args
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test clock-shell`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
