---@class System.Resources.Win32GroupIconResource : System.Resources.Win32Resource
local m = {}

---@virtual
---@param s System.IO.Stream
function m:WriteTo(s) end

System.Resources.Win32GroupIconResource = m
return m
