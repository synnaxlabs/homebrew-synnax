class Synnax < Formula
  desc "Operate large scale hardware systems with ease"
  homepage "https://github.com/synnaxlabs/synnax"
  url "https://github.com/synnaxlabs/synnax/archive/refs/tags/synnax/v0.8.1.tar.gz"
  sha256 "a8c443b501cfc0a028f18a7b7cc5d0edb03c46642ab0f158e8ff3d1adfa0ff75"
  license "BUSL-1.1"

  bottle do
    root_url "https://github.com/synnaxlabs/homebrew-synnax/releases/download/synnax-0.8.1"
    rebuild 1
    sha256 cellar: :any_skip_relocation, ventura:      "d02975c3c234ae8fcda24e95b4544cad851bf7cf3a3e9b14453b1a0e7ad7b07a"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "07b77aaa176f4668084bf33986caa439aff7b62116755f7336380932605ef099"
  end

  depends_on "go" => :build

  def install
    mkdir_p "./bin"
    system "go", "build", "-o=./bin/synnax", "./synnax"
    bin.install "./bin/synnax"
  end

  test do
    # system "go", "test", " -tags noui", "-v ./...", "--covermode=atomic",
    # "--coverprofile=coverage.txt", "--ginkgo.label-filter='!integration && !performance'"
    system "true"
  end
end
