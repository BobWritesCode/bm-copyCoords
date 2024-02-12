QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('bm-copyCoords:client:copyCoordsV3', function()
  local coordsToCopy = GetEntityCoords(PlayerPedId())
  coordsToCopy = "vec3(" .. coordsToCopy.x .. ", " .. coordsToCopy.y .. ", " .. coordsToCopy.z .. ")"
  print(coordsToCopy)
  SendNUIMessage({
    action = 'copy',
    toCopy = coordsToCopy
  })
end)

RegisterNetEvent('bm-copyCoords:client:copyCoordsV4', function()
  local coordsToCopy = GetEntityCoords(PlayerPedId())
  local heading = GetEntityHeading(PlayerPedId())
  coordsToCopy = "vec4(" .. coordsToCopy.x .. ", " .. coordsToCopy.y .. ", " .. coordsToCopy.z .. ", " .. heading .. ")"
  print(coordsToCopy)
  SendNUIMessage({
    action = 'copy',
    toCopy = coordsToCopy
  })
end)

print("Bob\'s Mods - Copy Coords loaded.")
