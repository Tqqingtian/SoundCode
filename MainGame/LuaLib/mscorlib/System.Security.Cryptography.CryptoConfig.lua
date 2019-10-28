---@class System.Security.Cryptography.CryptoConfig : System.Object
---@field public AllowOnlyFipsAlgorithms boolean @static
local m = {}

---@static
---@param str string
---@return string
function m.EncodeOID(str) end

---@overload fun(name:string, ...:any|any[]): @static
---@overload fun(name:string): @static
---@static
---@param name string
---@return any
function m.CreateFromName(name) end

---@static
---@param name string
---@return string
function m.MapNameToOID(name) end

---@overload fun(algorithm:System.Type) @static
---@static
---@param algorithm System.Type
---@param ... string|string[]
function m.AddAlgorithm(algorithm, ...) end

---@overload fun(oid:string) @static
---@static
---@param oid string
---@param ... string|string[]
function m.AddOID(oid, ...) end

System.Security.Cryptography.CryptoConfig = m
return m
