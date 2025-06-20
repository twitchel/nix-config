{
  description = "DJ's nix-config flake for linux/macOS machines";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
  };
  outputs = { self, nixpkgs, ... }: 
    let
      lib = nixpkgs.lib;
    in {
      nixosConfigurations = {
      seagull-farm = lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./hosts/seagull-farm/configuration.nix
        ];
      };
    };
  };
}