---@class Mono.Security.ASN1Convert : System.Object
local m = {}

---@static
---@param dt System.DateTime
---@return Mono.Security.ASN1
function m.FromDateTime(dt) end

---@static
---@param value number
---@return Mono.Security.ASN1
function m.FromInt32(value) end

---@static
---@param oid string
---@return Mono.Security.ASN1
function m.FromOid(oid) end

---@static
---@param big string
---@return Mono.Security.ASN1
function m.FromUnsignedBigInteger(big) end

---@static
---@param asn1 Mono.Security.ASN1
---@return number
function m.ToInt32(asn1) end

---@static
---@param asn1 Mono.Security.ASN1
---@return string
function m.ToOid(asn1) end

---@static
---@param time Mono.Security.ASN1
---@return System.DateTime
function m.ToDateTime(time) end

Mono.Security.ASN1Convert = m
return m
