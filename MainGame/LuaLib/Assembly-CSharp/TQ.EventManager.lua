---@class TQ.EventManager : TQ.ManagerBase
---@field public SocketEvent TQ.SocketEvent
---@field public CommonEvent TQ.CommonEvent
local m = {}

---@virtual
function m:Dispose() end

TQ.EventManager = m
return m
