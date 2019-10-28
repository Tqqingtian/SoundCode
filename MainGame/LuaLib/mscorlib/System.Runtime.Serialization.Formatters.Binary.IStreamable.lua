---@class System.Runtime.Serialization.Formatters.Binary.IStreamable : table
local m = {}

---@abstract
---@param input System.Runtime.Serialization.Formatters.Binary.__BinaryParser
function m:Read(input) end

---@abstract
---@param sout System.Runtime.Serialization.Formatters.Binary.__BinaryWriter
function m:Write(sout) end

System.Runtime.Serialization.Formatters.Binary.IStreamable = m
return m
