---@class System.Resources.Win32EncodedResource : System.Resources.Win32Resource
---@field public Data string
local m = {}

---@virtual
---@param s System.IO.Stream
function m:WriteTo(s) end

System.Resources.Win32EncodedResource = m
return m
