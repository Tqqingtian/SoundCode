---@class TQ.EventComponent : TQ.TQBaseComponent
---@field public SocketEvent TQ.SocketEvent
---@field public CommonEvent TQ.CommonEvent
local m = {}

---@virtual
function m:Shutdown() end

TQ.EventComponent = m
return m
