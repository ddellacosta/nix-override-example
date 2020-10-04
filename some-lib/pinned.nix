args: import (builtins.fetchGit {
  # Descriptive name to make the store path easier to identify
  name = "nixos-unstable-2020-09-11";
  url = "https://github.com/nixos/nixpkgs-channels/";
  # `git ls-remote https://github.com/nixos/nixpkgs-channels nixpkgs-unstable`
  ref = "refs/heads/nixpkgs-unstable";
  rev = "3c0e3697520cbe7d9eb3a64bfd87de840bf4aa77";
}) args
