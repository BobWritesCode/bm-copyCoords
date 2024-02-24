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

RegisterNetEvent('bm-copyCoords:client:copyCamRot', function()
  local coordsToCopy = GetGameplayCamRot(0)
  coordsToCopy = "vec3(" .. coordsToCopy.x .. ", " .. coordsToCopy.y .. ", " .. coordsToCopy.z .. ")"
  print(coordsToCopy)
  SendNUIMessage({
    action = 'copy',
    toCopy = coordsToCopy
  })
end)

RegisterNetEvent('bm-copyCoords:client:getAllItems', function()
  local items = QBCore.Shared.Items
  local itemsString = ''
  local isFirst = true
  for key, value in pairs(items) do
    if isFirst then
      itemsString = key
      isFirst = false
    else
      itemsString = itemsString .. ", " .. key
    end
  end
  print(itemsString)
end)

print("Bob\'s Mods - Copy Coords loaded.")
