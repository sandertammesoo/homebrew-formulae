class Zunit < Formula
  desc "A fork/adaption of a powerful testing framework for ZSH projects"
  homepage "https://zunit.xyz"
  url "https://github.com/sandertammesoo/zunit.git",
      tag:      "v0.11.0"
  sha256 "6b8daf52143b0d4666d7e8c97f93f0fd511d345f966e7a47a6779ed01cedf112"
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
