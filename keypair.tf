resource "aws_key_pair" "deployer" {
  key_name   = "id_rsa"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC4dmjRHo+Ay6NdPA3xC8RYP3YQl8YmIJvic2HUejfoyjP9FwxcI+IVPvKJdLqDjDpXBx4DOdedVv1jAZ/bomIvz6RaYcTVeR5Hg+7t2sg4Zf5noAmXMsWTqToVxoFsRyBY4T/qgI0sHoEUOKVI7aNX+WimmX8Dzatxei8BVBnnxHTfJoPMV3/rXZYL/2ubqpcIQ4jWL268Rx67tlOmpH+tTAKPIzGDX1fT2xliAO5Y4ovuT8SSSlLZ4WulyLIHSYJ4c9ZlHbcvDKHCv9kov24c3lhMEpV6RoZCaRtVec38X5F5Mi0zxfhkat4pY5yMDk8gGw+biPHmcM0HxP+x5UoJ user06@cc-9cc36db7-59b5c48d94-9nq88"
}