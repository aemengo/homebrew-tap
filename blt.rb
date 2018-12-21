class Blt < Formula
  desc "CLI for managing a local BOSH environment."
  homepage "https://github.com/aemengo/blt"
  version "v0.8"
  url "https://github.com/aemengo/blt/releases/download/#{version}/blt-#{version}-darwin-amd64"
  sha256 "aced786634d806e1559f12640529936f65e9a089544e8bbf995a8659d6d5c36d"

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
