---@class TQ.IUpdateComponent : table
---@field public InstanceId number
local m = {}

---@abstract
function m:OnUpdate() end

TQ.IUpdateComponent = m
return m
