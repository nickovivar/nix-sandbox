{
  network.description = "Web server";

  webserver =
    { config, pkgs, ... }:
    let
      app = (import ./default.nix {}).package.override {};
    in
    {
      networking.firewall.allowedTCPPorts = [ 80 ];
      services.nginx = {
        enable = true;
        virtualHosts."default" = {
          locations = {
            "/" = {
	            proxyPass = "http://localhost:3000/";
	          };
          };
        };
      };
      systemd.services.nix-sandbox = {
        enable = true;
        serviceConfig = {
          WorkingDirectory = "${app}/lib/node_modules/nix-sandbox";
          ExecStart = "${pkgs.nodejs-10_x}/bin/node ./bin/www";
        };
        wantedBy = [ "multi-user.target" ];
      };
    };
}
