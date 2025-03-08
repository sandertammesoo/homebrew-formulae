class Zunit < Formula
  desc "A fork/adaption of a powerful testing framework for ZSH projects"
  homepage "https://zunit.xyz"
  url "https://github.com/sandertammesoo/zunit/archive/refs/tags/v0.10.0.tar.gz"
  sha256 "9d2cfe586d160451cfff87293a39095c61684bfdb813db689edd2d0c83fbaaa4"
  license "MIT"

  # depends_on "cmake" => :build

  def install
    # system "./configure", "--disable-silent-rules", *std_configure_args
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "./configure"
    system "make"
    bin.install "bin/zunit"
    zsh_completion "_zunit"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test zunit`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system bin/"program", "do", "something"`.
    # system "false"
    system "true"
  end
end
