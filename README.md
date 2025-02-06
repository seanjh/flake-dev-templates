# flake-dev-templates

A collection of Nix flake templates for development environments.

## Prerequisites

- [Nix package manager](https://nixos.org/download.html)
- Flakes enabled in your Nix configuration

To enable flakes, add this to your `~/.config/nix/nix.conf`:

A collection of Nix flake templates for development environments.

## Usage

Initialize a new project using one of the available templates:

```bash
# For a Ruby development environment
nix flake init -t github:seanjh/flake-dev-templates#ruby

# For a Ruby on Rails development environment
nix flake init -t github:seanjh/flake-dev-templates#ruby-on-rails
