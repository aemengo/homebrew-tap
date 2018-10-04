class Blt < Formula
  desc "CLI for managing a local BOSH environment."
  homepage "https://github.com/aemengo/blt"
  version "v0.3"
  url "https://github.com/aemengo/blt/releases/download/#{version}/blt-#{version}-darwin-amd64"
  sha256 "dd74341a609dab4be501e193a0c1abc93db23ed4c3404e25a490e9b535fcb5aa"

  depends_on arch: :x86_64
  depends_on 'linuxkit/linuxkit/linuxkit'
  depends_on 'cloudfoundry/tap/bosh-cli'

  def install
    # system "/usr/local/bin/brew", "cask", "install", "docker"

    binary_name = "blt"
    bin.install "blt-#{version}-darwin-amd64" => binary_name
  end

  test do
    system "#{bin}/#{binary_name} --help"
  end
end
