---@class System.Runtime.InteropServices.ICustomFactory : table
local m = {}

---@abstract
---@param serverType System.Type
---@return System.MarshalByRefObject
function m:CreateInstance(serverType) end

System.Runtime.InteropServices.ICustomFactory = m
return m
