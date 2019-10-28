---@class Microsoft.Win32.ExpandString : System.Object
local m = {}

---@virtual
---@return string
function m:ToString() end

---@return string
function m:Expand() end

Microsoft.Win32.ExpandString = m
return m
