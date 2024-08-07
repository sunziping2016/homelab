{
  suites,
  profiles,
  modulesPath,
  ...
}:
{
  imports = [
    (modulesPath + "/profiles/qemu-guest.nix")
  ] ++ suites.aliyun ++ (with profiles; [ services.cluster.k3s-agent ]);

  system.stateVersion = "23.11";
}
