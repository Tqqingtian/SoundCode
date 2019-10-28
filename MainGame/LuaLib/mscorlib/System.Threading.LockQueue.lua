---@class System.Threading.LockQueue : System.Object
---@field public IsEmpty boolean
local m = {}

---@param timeout number
---@return boolean
function m:Wait(timeout) end

function m:Pulse() end

System.Threading.LockQueue = m
return m
