---@class System.Security.ISecurityEncodable : table
local m = {}

---@abstract
---@param e System.Security.SecurityElement
function m:FromXml(e) end

---@abstract
---@return System.Security.SecurityElement
function m:ToXml() end

System.Security.ISecurityEncodable = m
return m
