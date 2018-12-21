local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vRP_ownid")

AddEventHandler("vRP:playerSpawn",function(user_id,source,first_spawn)
  if first_spawn then
	   TriggerClientEvent("ownId:init", source, user_id)
  end
end)
