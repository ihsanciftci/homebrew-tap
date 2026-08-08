# Homebrew formula template for Dataglot (OSS-107).
#
# Rendered by the release workflow with the tag's version + artifact
# sha256s and attached to the GitHub Release as `dataglot.rb`. To
# publish: copy the rendered file into `peakacom/homebrew-tap` at
# `Formula/dataglot.rb` (manual today; becomes a push step when the
# tap repo exists — see docs/install.md).
#
# Install (after the tap exists and the repo is public):
#   brew install peakacom/tap/dataglot
class Dataglot < Formula
  desc "Rust-native federated SQL engine with plan-time governance"
  homepage "https://github.com/peakacom/dataglot-harness"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/peakacom/dataglot-harness/releases/download/v0.5.0/dataglot-0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "960f9d3187ca0fecf92959b730a67363c8d33c1c3e79ee1c583e83f0b7e89654"
    end
    on_intel do
      url "https://github.com/peakacom/dataglot-harness/releases/download/v0.5.0/dataglot-0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "8713ca1c9596ff0c1f2d85a38fb0f7b618b5439c325f16d206dd13652c9c105c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/peakacom/dataglot-harness/releases/download/v0.5.0/dataglot-0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c638dcb4b639bbae44aeffa797126bf659c63f259418f91439f217e175bad530"
    end
    on_intel do
      url "https://github.com/peakacom/dataglot-harness/releases/download/v0.5.0/dataglot-0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9facdbbe2477958651f4a51394647a498eb85b968276090f6a6b0ac171217005"
    end
  end

  def install
    bin.install "dataglot"
  end

  test do
    assert_match "dataglot", shell_output("#{bin}/dataglot --help")
  end
end
