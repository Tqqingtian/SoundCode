---@class UnityEngine.Profiling.CustomSampler : UnityEngine.Profiling.Sampler
local m = {}

---@static
---@param name string
---@return UnityEngine.Profiling.CustomSampler
function m.Create(name) end

---@overload fun(targetObject:UnityEngine.Object)
function m:Begin() end

function m:End() end

UnityEngine.Profiling.CustomSampler = m
return m
