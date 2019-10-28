---@class TQ.SysDataManager : System.Object
---@field public CurrServerTime number
---@field public CurrChannelConfig ChannelConfigEntity
local m = {}

function m:Clear() end

---@virtual
function m:Dispose() end

TQ.SysDataManager = m
return m
