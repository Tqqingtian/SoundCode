---@class UnityEngine.Resolution : System.ValueType
---@field public width number
---@field public height number
---@field public refreshRate number
local m = {}

---@virtual
---@return string
function m:ToString() end

UnityEngine.Resolution = m
return m
