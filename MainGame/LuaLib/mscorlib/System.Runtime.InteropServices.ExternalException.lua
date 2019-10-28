---@class System.Runtime.InteropServices.ExternalException : System.SystemException
---@field public ErrorCode number
local m = {}

---@virtual
---@return string
function m:ToString() end

System.Runtime.InteropServices.ExternalException = m
return m
