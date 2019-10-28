---@class TQ.IProto : table
---@field public ProtoCode number
---@field public ProtoEnName string
local m = {}

---@abstract
---@return string
function m:ToArray() end

TQ.IProto = m
return m
