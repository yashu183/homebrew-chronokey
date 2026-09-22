class Chronokey < Formula
  desc "CLI tool for managing and generating TOTP codes for two-factor authentication"
  homepage "https://github.com/yashu183/totp-cli"
  url "https://registry.npmjs.org/chronokey/-/chronokey-1.0.0.tgz"
  sha256 "b9b9c6222589f822f7d9305ecef0b8e1adf61cdeac562271f16b8274e9ad76dc"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "1.0.0", shell_output("#{bin}/chronokey --version")
  end
end
