---@class System.Runtime.Remoting.SoapServices : System.Object
---@field public XmlNsForClrType string @static
---@field public XmlNsForClrTypeWithAssembly string @static
---@field public XmlNsForClrTypeWithNs string @static
---@field public XmlNsForClrTypeWithNsAndAssembly string @static
local m = {}

---@static
---@param typeNamespace string
---@param assemblyName string
---@return string
function m.CodeXmlNamespaceForClrTypeNamespace(typeNamespace, assemblyName) end

---@static
---@param inNamespace string
---@return boolean, System.String, System.String
function m.DecodeXmlNamespaceForClrTypeNamespace(inNamespace) end

---@static
---@param containingType System.Type
---@param xmlAttribute string
---@param xmlNamespace string
---@return System.Type, System.String
function m.GetInteropFieldTypeAndNameFromXmlAttribute(containingType, xmlAttribute, xmlNamespace) end

---@static
---@param containingType System.Type
---@param xmlElement string
---@param xmlNamespace string
---@return System.Type, System.String
function m.GetInteropFieldTypeAndNameFromXmlElement(containingType, xmlElement, xmlNamespace) end

---@static
---@param xmlElement string
---@param xmlNamespace string
---@return System.Type
function m.GetInteropTypeFromXmlElement(xmlElement, xmlNamespace) end

---@static
---@param xmlType string
---@param xmlTypeNamespace string
---@return System.Type
function m.GetInteropTypeFromXmlType(xmlType, xmlTypeNamespace) end

---@static
---@param mb System.Reflection.MethodBase
---@return string
function m.GetSoapActionFromMethodBase(mb) end

---@static
---@param soapAction string
---@return boolean, System.String, System.String
function m.GetTypeAndMethodNameFromSoapAction(soapAction) end

---@static
---@param type System.Type
---@return boolean, System.String, System.String
function m.GetXmlElementForInteropType(type) end

---@static
---@param mb System.Reflection.MethodBase
---@return string
function m.GetXmlNamespaceForMethodCall(mb) end

---@static
---@param mb System.Reflection.MethodBase
---@return string
function m.GetXmlNamespaceForMethodResponse(mb) end

---@static
---@param type System.Type
---@return boolean, System.String, System.String
function m.GetXmlTypeForInteropType(type) end

---@static
---@param namespaceString string
---@return boolean
function m.IsClrTypeNamespace(namespaceString) end

---@static
---@param soapAction string
---@param mb System.Reflection.MethodBase
---@return boolean
function m.IsSoapActionValidForMethodBase(soapAction, mb) end

---@overload fun(type:System.Type) @static
---@static
---@param assembly System.Reflection.Assembly
function m.PreLoad(assembly) end

---@static
---@param xmlElement string
---@param xmlNamespace string
---@param type System.Type
function m.RegisterInteropXmlElement(xmlElement, xmlNamespace, type) end

---@static
---@param xmlType string
---@param xmlTypeNamespace string
---@param type System.Type
function m.RegisterInteropXmlType(xmlType, xmlTypeNamespace, type) end

---@overload fun(mb:System.Reflection.MethodBase, soapAction:string) @static
---@static
---@param mb System.Reflection.MethodBase
function m.RegisterSoapActionForMethodBase(mb) end

System.Runtime.Remoting.SoapServices = m
return m
