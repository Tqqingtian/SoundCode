---@class System.Runtime.Serialization.Formatters.InternalRM : System.Object
local m = {}

---@overload fun() @static
---@static
---@param ... any|any[]
function m.InfoSoap(...) end

---@static
---@return boolean
function m.SoapCheckEnabled() end

System.Runtime.Serialization.Formatters.InternalRM = m
return m
