---@class Mono.Security.X509.X509Extension : System.Object
---@field public ASN1 Mono.Security.ASN1
---@field public Oid string
---@field public Critical boolean
---@field public Name string
---@field public Value Mono.Security.ASN1
local m = {}

---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@return string
function m:GetBytes() end

---@virtual
---@return number
function m:GetHashCode() end

---@virtual
---@return string
function m:ToString() end

Mono.Security.X509.X509Extension = m
return m
