---@class System.Runtime.Remoting.Metadata.SoapFieldAttribute : System.Runtime.Remoting.Metadata.SoapAttribute
---@field public Order number
---@field public XmlElementName string
local m = {}

---@return boolean
function m:IsInteropXmlElement() end

System.Runtime.Remoting.Metadata.SoapFieldAttribute = m
return m
