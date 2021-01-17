class Hssh < Formula
  desc "An utility to easily search through your ssh configs and connect into remote servers. Also you can use a gitlab repo to store your config files and sync it!"
  homepage "https://github.com/CasvalDOT/hssh"
  url "https://github.com/CasvalDOT/hssh/archive/v2.0.0.tar.gz"
  sha256 "2cf074b033f3343a57e589a8c16341d1f40d061c76fed13660a55acf86db2288"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end
end
