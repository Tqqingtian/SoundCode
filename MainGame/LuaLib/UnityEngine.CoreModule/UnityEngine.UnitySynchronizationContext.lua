---@class UnityEngine.UnitySynchronizationContext : System.Threading.SynchronizationContext
local m = {}

---@virtual
---@param callback fun(state:any)
---@param state any
function m:Send(callback, state) end

---@virtual
---@param callback fun(state:any)
---@param state any
function m:Post(callback, state) end

---@virtual
---@return System.Threading.SynchronizationContext
function m:CreateCopy() end

UnityEngine.UnitySynchronizationContext = m
return m
