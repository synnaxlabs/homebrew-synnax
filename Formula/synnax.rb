class Synnax < Formula
  desc "Operate large scale hardware systems with ease"
  homepage "https://github.com/synnaxlabs/synnax"
  url "https://github.com/synnaxlabs/synnax/archive/refs/tags/synnax/v0.8.1.tar.gz"
  sha256 "a8c443b501cfc0a028f18a7b7cc5d0edb03c46642ab0f158e8ff3d1adfa0ff75"
  license "BUSL-1.1"

  depends_on "go" => :build

  def install
    mkdir_p "./bin"
    system "go", "build", "-o=./bin/synnax", "./synnax"
    bin.install "./bin/synnax"
  end

  test do
    system "true"
  end
end
