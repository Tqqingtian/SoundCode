---@class System.Resources.Win32Resource : System.Object
---@field public ResourceType System.Resources.Win32ResourceType
---@field public Name System.Resources.NameOrId
---@field public Type System.Resources.NameOrId
---@field public Language number
local m = {}

---@abstract
---@param s System.IO.Stream
function m:WriteTo(s) end

---@virtual
---@return string
function m:ToString() end

System.Resources.Win32Resource = m
return m
