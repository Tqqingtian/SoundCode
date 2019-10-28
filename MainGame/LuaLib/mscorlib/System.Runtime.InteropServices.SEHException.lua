---@class System.Runtime.InteropServices.SEHException : System.Runtime.InteropServices.ExternalException
local m = {}

---@virtual
---@return boolean
function m:CanResume() end

System.Runtime.InteropServices.SEHException = m
return m
