---@class Mono.Security.X509.X509ExtensionCollection : System.Collections.CollectionBase
---@field public Item Mono.Security.X509.X509Extension
---@field public Item Mono.Security.X509.X509Extension
local m = {}

---@param extension Mono.Security.X509.X509Extension
---@return number
function m:Add(extension) end

---@overload fun(collection:Mono.Security.X509.X509ExtensionCollection)
---@param extension Mono.Security.X509.X509Extension[]
function m:AddRange(extension) end

---@overload fun(oid:string):
---@param extension Mono.Security.X509.X509Extension
---@return boolean
function m:Contains(extension) end

---@param extensions Mono.Security.X509.X509Extension[]
---@param index number
function m:CopyTo(extensions, index) end

---@overload fun(oid:string):
---@param extension Mono.Security.X509.X509Extension
---@return number
function m:IndexOf(extension) end

---@param index number
---@param extension Mono.Security.X509.X509Extension
function m:Insert(index, extension) end

---@overload fun(oid:string)
---@param extension Mono.Security.X509.X509Extension
function m:Remove(extension) end

---@return string
function m:GetBytes() end

Mono.Security.X509.X509ExtensionCollection = m
return m
