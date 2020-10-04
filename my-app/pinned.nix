args: import (builtins.fetchGit {
  # Descriptive name to make the store path easier to identify
  name = "nixos-unstable-2020-09-17";
  url = "https://github.com/nixos/nixpkgs-channels/";
  # `git ls-remote https://github.com/nixos/nixpkgs-channels nixpkgs-unstable`
  ref = "refs/heads/nixpkgs-unstable";
  rev = "72b9660dc18ba347f7cd41a9504fc181a6d87dc3";
}) args
