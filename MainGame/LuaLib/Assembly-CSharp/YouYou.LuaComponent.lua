---@class TQ.LuaComponent : TQ.TQBaseComponent
---@field public DebugLogProto boolean
---@field public LoadDataTableMS MMO_MemoryStream
local m = {}

function m:Init() end

---@param tableName string
---@param onComplete fun(t1:MMO_MemoryStream)
function m:LoadDataTable(tableName, onComplete) end

---@param buffer string
---@return MMO_MemoryStream
function m:LoadSocketReceiveMS(buffer) end

---@virtual
function m:Shutdown() end

TQ.LuaComponent = m
return m
