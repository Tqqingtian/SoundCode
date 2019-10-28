---@class UnityEngine.MasterServer : System.Object
---@field public ipAddress string @static
---@field public port number @static
---@field public updateRate number @static
---@field public dedicatedServer boolean @static
local m = {}

---@static
---@param gameTypeName string
function m.RequestHostList(gameTypeName) end

---@static
---@return UnityEngine.HostData[]
function m.PollHostList() end

---@overload fun(gameTypeName:string, gameName:string, comment:string) @static
---@static
---@param gameTypeName string
---@param gameName string
function m.RegisterHost(gameTypeName, gameName) end

---@static
function m.UnregisterHost() end

---@static
function m.ClearHostList() end

UnityEngine.MasterServer = m
return m
