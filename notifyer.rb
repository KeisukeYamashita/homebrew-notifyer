# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Notifyer < Formula
  desc "Notification util written in golang"
  homepage ""
  url "https://github.com/KeisukeYamashita/notifyer/archive/0.1.4.tar.gz"
  sha256 "9c6b30ef74d04faa35ddffb68483376a2a04a1d746d641bf728408b851c53f74"

  depends_on "go" => :build

  def install
    system "make", "install" # if this fails, try separate make/make install steps
    bin.install "bin/notifyer"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test notifyer`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
