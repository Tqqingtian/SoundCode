---@class System.Runtime.Remoting.Metadata.W3cXsd2001.SoapToken : System.Object
---@field public XsdType string @static
---@field public Value string
local m = {}

---@virtual
---@return string
function m:GetXsdType() end

---@static
---@param value string
---@return System.Runtime.Remoting.Metadata.W3cXsd2001.SoapToken
function m.Parse(value) end

---@virtual
---@return string
function m:ToString() end

System.Runtime.Remoting.Metadata.W3cXsd2001.SoapToken = m
return m
