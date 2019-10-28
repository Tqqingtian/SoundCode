---@class UnityEngine.SystemClock : System.Object
---@field public now System.DateTime @static
local m = {}

---@static
---@param date System.DateTime
---@return number
function m.ToUnixTimeMilliseconds(date) end

---@static
---@param date System.DateTime
---@return number
function m.ToUnixTimeSeconds(date) end

UnityEngine.SystemClock = m
return m
