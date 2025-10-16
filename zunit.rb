class Zunit < Formula
  desc "A fork/adaption of a powerful testing framework for ZSH projects"
  homepage "https://zunit.xyz"
  url "https://github.com/sandertammesoo/zunit.git",
      tag:      "v0.11.1"
  sha256 "a08682d415f30e3e4c3bffb4ab24a9a2966328168a622d2f6d14a8ffa7186439"
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
