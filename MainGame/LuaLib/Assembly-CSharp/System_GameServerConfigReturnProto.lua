---@class System_GameServerConfigReturnProto : System.ValueType
---@field public ConfigCount number
---@field public ServerConfigList System_GameServerConfigReturnProto.ConfigItem[]
---@field public ProtoCode number
---@field public ProtoEnName string
local m = {}

---@overload fun(): @virtual
---@virtual
---@param isChild boolean
---@return string
function m:ToArray(isChild) end

---@overload fun(buffer:string): @static
---@static
---@param buffer string
---@param isChild boolean
---@return System_GameServerConfigReturnProto
function m.GetProto(buffer, isChild) end

System_GameServerConfigReturnProto = m
return m
