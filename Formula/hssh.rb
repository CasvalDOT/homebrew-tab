class Hssh < Formula
  desc "An utility to easily search through your ssh configs and connect into remote servers. Also you can use a gitlab repo to store your config files and sync it!"
  homepage "https://github.com/CasvalDOT/hssh"
  url "https://github.com/CasvalDOT/hssh/archive/v1.0.0.tar.gz"
  sha256 "35dbc12fd071598b3b7a85a6e14c759c0d15959c50aa1a56b93ec2f0becf1de7"
  license "MIT"

  depends_on "go" => :build
  depends_on "fzf" => :recommended

  def install
    system "go", "build", *std_go_args, "-o", "#{bin}/hssh"
  end
end
