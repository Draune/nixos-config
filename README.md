To install launch from the flake repo:

```
sudo nixos-rebuild switch --flake '.?submodules=1' --impure --cores 1
```

- `'.?submodules=1'`: to get emacs-config from git submodule
- `--impure`: because I don't want my hardware-configuration.nix inside the repo and emacs-config is dirty
- `--cores 1`: to use when getting out of memory errors

