---@class Mono.Security.X509.X509CertificateCollection : System.Collections.CollectionBase
---@field public Item Mono.Security.X509.X509Certificate
local m = {}

---@param value Mono.Security.X509.X509Certificate
---@return number
function m:Add(value) end

---@overload fun(value:Mono.Security.X509.X509CertificateCollection)
---@param value Mono.Security.X509.X509Certificate[]
function m:AddRange(value) end

---@param value Mono.Security.X509.X509Certificate
---@return boolean
function m:Contains(value) end

---@param array Mono.Security.X509.X509Certificate[]
---@param index number
function m:CopyTo(array, index) end

---@return Mono.Security.X509.X509CertificateCollection.X509CertificateEnumerator
function m:GetEnumerator() end

---@virtual
---@return number
function m:GetHashCode() end

---@param value Mono.Security.X509.X509Certificate
---@return number
function m:IndexOf(value) end

---@param index number
---@param value Mono.Security.X509.X509Certificate
function m:Insert(index, value) end

---@param value Mono.Security.X509.X509Certificate
function m:Remove(value) end

Mono.Security.X509.X509CertificateCollection = m
return m
