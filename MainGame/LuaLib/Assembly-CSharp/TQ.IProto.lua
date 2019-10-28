---@class TQ.IProto : table
---@field public ProtoCode number
---@field public ProtoEnName string
local m = {}

---@overload fun(): @abstract
---@abstract
---@param isCild boolean
---@return string
function m:ToArray(isCild) end

TQ.IProto = m
return m
