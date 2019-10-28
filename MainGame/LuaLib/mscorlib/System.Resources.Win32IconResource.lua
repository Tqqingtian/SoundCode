---@class System.Resources.Win32IconResource : System.Resources.Win32Resource
---@field public Icon System.Resources.ICONDIRENTRY
local m = {}

---@virtual
---@param s System.IO.Stream
function m:WriteTo(s) end

System.Resources.Win32IconResource = m
return m
