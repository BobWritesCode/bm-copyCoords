QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('bm-copyCoords:client:copyCoordsV3', function()
  local coordsToCopy = GetEntityCoords(PlayerPedId())
  coordsToCopy = "vec3(" .. coordsToCopy.x .. ", " .. coordsToCopy.y .. ", " .. coordsToCopy.z .. ")"
  DebugPrint2("Vector3: ", coordsToCopy)
  SendNUIMessage({
    action = 'copy',
    toCopy = coordsToCopy
  })
end)

RegisterNetEvent('bm-copyCoords:client:copyCoordsV4', function()
  local coordsToCopy = GetEntityCoords(PlayerPedId())
  local heading = GetEntityHeading(PlayerPedId())
  coordsToCopy = "vec4(" .. coordsToCopy.x .. ", " .. coordsToCopy.y .. ", " .. coordsToCopy.z .. ", " .. heading .. ")"
  DebugPrint2("Vector4: ", coordsToCopy)
  SendNUIMessage({
    action = 'copy',
    toCopy = coordsToCopy
  })
end)

RegisterNetEvent('bm-copyCoords:client:copyCamRot', function()
  local coordsToCopy = GetGameplayCamRot(0)
  coordsToCopy = "vec3(" .. coordsToCopy.x .. ", " .. coordsToCopy.y .. ", " .. coordsToCopy.z .. ")"
  DebugPrint2("Cam rotation vector3: ", coordsToCopy)
  SendNUIMessage({
    action = 'copy',
    toCopy = coordsToCopy
  })
end)

RegisterNetEvent('bm-copyCoords:client:getAllItems', function()
  local items = QBCore.Shared.Items
  local itemsString = ''
  local isFirst = true
  for key, _ in pairs(items) do
    if isFirst then
      itemsString = key
      isFirst = false
    else
      itemsString = itemsString .. ", " .. key
    end
  end
  DebugPrint(itemsString)
end)

print("^4[Log] ^3bm-copyCoords ^2started^7")
