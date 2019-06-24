{
  webserver = { pkgs, ... }: {
    deployment.targetEnv = "virtualbox";
    deployment.virtualbox.headless = true;
  };
}
