class Blt < Formula
  desc "CLI for managing a local BOSH environment."
  homepage "https://github.com/aemengo/blt"
  version "v0.1"
  url "https://github.com/aemengo/blt/releases/download/#{version}/blt-#{version}-darwin-amd64"
  sha256 "abf5d169cf2ce8100e5fb1c563c3fdaaa5f4387977c10f6ae54ba35936f60f2e"

  depends_on arch: :x86_64
  depends_on 'linuxkit/linuxkit/linuxkit'
  depends_on 'cloudfoundry/tap/bosh-cli'

  def install
    system "/usr/local/bin/brew", "cask", "install", "docker"

    binary_name = "blt"
    bin.install "blt-#{version}-darwin-amd64" => binary_name
  end

  test do
    system "#{bin}/#{binary_name} --help"
  end
end
