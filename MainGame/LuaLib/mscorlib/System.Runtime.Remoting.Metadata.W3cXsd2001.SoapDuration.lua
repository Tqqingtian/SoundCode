---@class System.Runtime.Remoting.Metadata.W3cXsd2001.SoapDuration : System.Object
---@field public XsdType string @static
local m = {}

---@static
---@param value string
---@return System.TimeSpan
function m.Parse(value) end

---@static
---@param timeSpan System.TimeSpan
---@return string
function m.ToString(timeSpan) end

System.Runtime.Remoting.Metadata.W3cXsd2001.SoapDuration = m
return m
