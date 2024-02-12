local QBCore = exports['qb-core']:GetCoreObject()

-- In game commands
QBCore.Commands.Add('cv3', "Copy vector3 coords", {}, false, function(source)
  TriggerClientEvent('bm-copyCoords:client:copyCoordsV3', source)
end)

QBCore.Commands.Add('cv4', "Copy vector4 coords", {}, false, function(source)
  TriggerClientEvent('bm-copyCoords:client:copyCoordsV4', source)
end)

QBCore.Commands.Add('crot', "Copy cam rotation", {}, false, function(source)
  TriggerClientEvent('bm-copyCoords:client:copyCamRot', source)
end)

print("Bob\'s Mods - Copy Coords loaded.")
