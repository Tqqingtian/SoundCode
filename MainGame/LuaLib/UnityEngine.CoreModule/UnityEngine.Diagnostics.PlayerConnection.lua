---@class UnityEngine.Diagnostics.PlayerConnection : System.Object
---@field public connected boolean @static
local m = {}

---@static
---@param remoteFilePath string
---@param data string
function m.SendFile(remoteFilePath, data) end

UnityEngine.Diagnostics.PlayerConnection = m
return m
