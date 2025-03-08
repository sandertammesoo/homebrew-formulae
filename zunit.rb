class Zunit < Formula
  desc "A fork/adaption of a powerful testing framework for ZSH projects"
  homepage "https://zunit.xyz"
  url "https://github.com/sandertammesoo/zunit.git",
      tag:      "v0.10.0"
  sha256 "9d2cfe586d160451cfff87293a39095c61684bfdb813db689edd2d0c83fbaaa4"
  head "https://github.com/sandertammesoo/zunit.git", branch: "develop" # the default is "master"
  license "MIT"

  def install
    bin.install "bin/zunit"
    zsh_completion.install "_zunit"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/zunit -v")
  end
end
