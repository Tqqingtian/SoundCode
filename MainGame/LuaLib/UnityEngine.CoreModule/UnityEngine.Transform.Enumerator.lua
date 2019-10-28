---@class UnityEngine.Transform.Enumerator : System.Object
---@field public Current any
local m = {}

---@virtual
---@return boolean
function m:MoveNext() end

---@virtual
function m:Reset() end

UnityEngine.Transform.Enumerator = m
return m
