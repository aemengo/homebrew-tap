class Blt < Formula
  desc "CLI for managing a local BOSH environment."
  homepage "https://github.com/aemengo/blt"
  version "v0.4"
  url "https://github.com/aemengo/blt/releases/download/#{version}/blt-#{version}-darwin-amd64"
  sha256 "f2091206d98240da4fa67e1446a8e350155cc44e4a9b23c4ae20b305846b9753"

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
