Debug = Config.Debug

function DebugPrint(str)
  if Debug then print("^4[Debug] ^2" .. tostring(str) .. "^7") end
end

function DebugPrint2(str1, str2)
  if Debug then print("^4[Debug] ^2" .. tostring(str1) .. "^3" .. tostring(str2) .. "^7") end
end
