{ config, pkgs, inputs, ... }:

virtualisation.docker = {
  enable = true;
  rootless = {
    enable = true;
    setSocketVariable = true;
  };
};

