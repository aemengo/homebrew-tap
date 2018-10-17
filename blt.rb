class Blt < Formula
  desc "CLI for managing a local BOSH environment."
  homepage "https://github.com/aemengo/blt"
  version "v0.5"
  url "https://github.com/aemengo/blt/releases/download/#{version}/blt-#{version}-darwin-amd64"
  sha256 "870f21b5ca56a1537c0bb2efedacdc4be640bdf4763b2a44b76c14439ac6e781"

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
