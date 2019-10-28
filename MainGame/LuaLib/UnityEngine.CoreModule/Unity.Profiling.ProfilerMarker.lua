---@class Unity.Profiling.ProfilerMarker : System.ValueType
local m = {}

---@overload fun(contextUnityObject:UnityEngine.Object)
function m:Begin() end

function m:End() end

---@return Unity.Profiling.ProfilerMarker.AutoScope
function m:Auto() end

Unity.Profiling.ProfilerMarker = m
return m
