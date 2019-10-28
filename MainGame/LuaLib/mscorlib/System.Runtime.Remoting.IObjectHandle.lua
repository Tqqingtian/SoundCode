---@class System.Runtime.Remoting.IObjectHandle : table
local m = {}

---@abstract
---@return any
function m:Unwrap() end

System.Runtime.Remoting.IObjectHandle = m
return m
