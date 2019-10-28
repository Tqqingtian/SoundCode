---@class System.Runtime.Remoting.Metadata.W3cXsd2001.SoapDateTime : System.Object
---@field public XsdType string @static
local m = {}

---@static
---@param value string
---@return System.DateTime
function m.Parse(value) end

---@static
---@param value System.DateTime
---@return string
function m.ToString(value) end

System.Runtime.Remoting.Metadata.W3cXsd2001.SoapDateTime = m
return m
