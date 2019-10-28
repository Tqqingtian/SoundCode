---@class Mono.Security.ASN1 : System.Object
---@field public Count number
---@field public Tag number
---@field public Length number
---@field public Value string
---@field public Item Mono.Security.ASN1
local m = {}

---@param asn1 string
---@return boolean
function m:Equals(asn1) end

---@param value string
---@return boolean
function m:CompareValue(value) end

---@param asn1 Mono.Security.ASN1
---@return Mono.Security.ASN1
function m:Add(asn1) end

---@virtual
---@return string
function m:GetBytes() end

---@param index number
---@param anTag number
---@return Mono.Security.ASN1
function m:Element(index, anTag) end

---@virtual
---@return string
function m:ToString() end

---@param filename string
function m:SaveToFile(filename) end

Mono.Security.ASN1 = m
return m
