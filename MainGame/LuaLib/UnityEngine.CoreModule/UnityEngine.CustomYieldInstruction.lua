---@class UnityEngine.CustomYieldInstruction : System.Object
---@field public keepWaiting boolean
---@field public Current any
local m = {}

---@virtual
---@return boolean
function m:MoveNext() end

---@virtual
function m:Reset() end

UnityEngine.CustomYieldInstruction = m
return m
