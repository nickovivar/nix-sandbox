# Nix Sandbox

[![built with nix](https://builtwithnix.org/badge.svg)](https://builtwithnix.org)

Deploy a simple ExpressJS application using Nix and NixOps

Install [Nix](https://nixos.org/nix/manual/#sect-multi-user-installation) Package manager as multi-user mode.

## Getting started

Start a new isolated environment for the project:

```
nix-shell
```
Install all project dependencies:

```
npm install
```

## Node to Nix

Create Nix expressions from NodeJS code:

```
node2nix --nodejs-10 -l package-lock.json
```

## Build Process

Build the application

```
nix-build
```

## Deployment Process

Create a deployment

```
nixops create ./nix-sandbox.nix ./nix-sandbox-vbox.nix -d nix-sandbox
```

Deploy the application

```
nixops deploy
```


