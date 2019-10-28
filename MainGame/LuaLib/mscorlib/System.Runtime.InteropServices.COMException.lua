---@class System.Runtime.InteropServices.COMException : System.Runtime.InteropServices.ExternalException
local m = {}

---@virtual
---@return string
function m:ToString() end

System.Runtime.InteropServices.COMException = m
return m
