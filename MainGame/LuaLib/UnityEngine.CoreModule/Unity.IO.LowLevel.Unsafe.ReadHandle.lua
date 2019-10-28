---@class Unity.IO.LowLevel.Unsafe.ReadHandle : System.ValueType
---@field public JobHandle Unity.Jobs.JobHandle
---@field public Status Unity.IO.LowLevel.Unsafe.ReadStatus
local m = {}

---@return boolean
function m:IsValid() end

---@virtual
function m:Dispose() end

Unity.IO.LowLevel.Unsafe.ReadHandle = m
return m
