---@class TQ.TQBaseComponent : TQ.TQComponent
local m = {}

---@abstract
function m:Shutdown() end

TQ.TQBaseComponent = m
return m
