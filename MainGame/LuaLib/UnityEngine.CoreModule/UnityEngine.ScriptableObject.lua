---@class UnityEngine.ScriptableObject : UnityEngine.Object
local m = {}

function m:SetDirty() end

---@overload fun(type:System.Type): @static
---@overload fun(): @static
---@static
---@param className string
---@return UnityEngine.ScriptableObject
function m.CreateInstance(className) end

UnityEngine.ScriptableObject = m
return m
