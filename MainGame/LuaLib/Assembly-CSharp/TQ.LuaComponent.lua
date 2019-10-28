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

---@return MMO_MemoryStream
function m:DequeueMemoryStream() end

---@param buffer string
---@return MMO_MemoryStream
function m:DequeueMemoryStreamAndLoadBuffer(buffer) end

---@param ms MMO_MemoryStream
function m:EnqueueMemoryStream(ms) end

---@param ms MMO_MemoryStream
---@param len number
---@return string
function m:GetByteArray(ms, len) end

---@virtual
function m:Shutdown() end

TQ.LuaComponent = m
return m
