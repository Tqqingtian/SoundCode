---@class TQ.DataComponent : TQ.TQBaseComponent
---@field public CacheData TQ.CacheDataManager
---@field public SysDataManager TQ.SysDataManager
---@field public UserDataManager TQ.UserDataManager
---@field public PVEData TQ.PVEDataManager
local m = {}

---@virtual
function m:Shutdown() end

TQ.DataComponent = m
return m
