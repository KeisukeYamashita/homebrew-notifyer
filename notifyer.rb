# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Notifyer < Formula
  desc "Notification util written in golang"
  homepage ""
  url "https://github.com/KeisukeYamashita/notifyer/archive/0.1.3.tar.gz"
  sha256 "7e60750cf2e2cec91195c425ee6eef43f81d9008dd6b531f0fa1282eda813ef5"

  depends_on "go" => :build

  def install
    system "make", "install" # if this fails, try separate make/make install steps
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
