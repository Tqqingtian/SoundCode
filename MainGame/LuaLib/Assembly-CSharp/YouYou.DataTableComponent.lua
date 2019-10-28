---@class TQ.DataTableComponent : TQ.TQBaseComponent
---@field public DataTableManager TQ.DataTableManager
local m = {}

---@virtual
function m:Shutdown() end

function m:LoadDataTableAsync() end

TQ.DataTableComponent = m
return m
