---@class System.Runtime.Remoting.Metadata.W3cXsd2001.SoapHelper : System.Object
local m = {}

---@static
---@param type System.Runtime.Remoting.Metadata.W3cXsd2001.ISoapXsd
---@param msg string
---@return System.Exception
function m.GetException(type, msg) end

---@static
---@param s string
---@return string
function m.Normalize(s) end

System.Runtime.Remoting.Metadata.W3cXsd2001.SoapHelper = m
return m
