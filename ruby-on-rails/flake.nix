# templates/rails/flake.nix
{
  inputs = {
    nixpkgs.url = "https://flakehub.com/f/NixOS/nixpkgs/0.2411.*";
    flake-utils.url = "github:numtide/flake-utils/11707dc2f618dd54ca8739b309ec4fc024de578b";
    ruby-base.url = "../ruby"; # Local reference to ruby template
  };
  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
      ruby-base,
    }:
    flake-utils.lib.eachDefaultSystem (system: {
      devShells.default =
        let
          pkgs = import nixpkgs { inherit system; };
        in
        ruby-base.devShells.${system}.default.overrideAttrs (oldAttrs: {
          packages =
            oldAttrs.packages
            ++ (with pkgs; [
              (ruby_3_3.withPackages (
                ps: with ps; [
                  rubocop-rails
                  rubocop-rspec
                  erb-lint
                ]
              ))
            ]);
          shellHook =
            oldAttrs.shellHook
            + ''
              bundle config set --local without 'production'
            '';
        });
    });
}
