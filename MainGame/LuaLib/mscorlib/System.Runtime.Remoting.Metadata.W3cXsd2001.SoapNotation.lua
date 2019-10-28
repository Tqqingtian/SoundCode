---@class System.Runtime.Remoting.Metadata.W3cXsd2001.SoapNotation : System.Object
---@field public XsdType string @static
---@field public Value string
local m = {}

---@virtual
---@return string
function m:GetXsdType() end

---@static
---@param value string
---@return System.Runtime.Remoting.Metadata.W3cXsd2001.SoapNotation
function m.Parse(value) end

---@virtual
---@return string
function m:ToString() end

System.Runtime.Remoting.Metadata.W3cXsd2001.SoapNotation = m
return m
