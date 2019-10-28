---@class System.Runtime.Remoting.Metadata.W3cXsd2001.SoapQName : System.Object
---@field public XsdType string @static
---@field public Key string
---@field public Name string
---@field public Namespace string
local m = {}

---@virtual
---@return string
function m:GetXsdType() end

---@static
---@param value string
---@return System.Runtime.Remoting.Metadata.W3cXsd2001.SoapQName
function m.Parse(value) end

---@virtual
---@return string
function m:ToString() end

System.Runtime.Remoting.Metadata.W3cXsd2001.SoapQName = m
return m
