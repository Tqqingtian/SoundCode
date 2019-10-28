---@class UnityEngine.StaticBatchingUtility : System.Object
local m = {}

---@overload fun(gos:UnityEngine.GameObject[], staticBatchRoot:UnityEngine.GameObject) @static
---@static
---@param staticBatchRoot UnityEngine.GameObject
function m.Combine(staticBatchRoot) end

UnityEngine.StaticBatchingUtility = m
return m
