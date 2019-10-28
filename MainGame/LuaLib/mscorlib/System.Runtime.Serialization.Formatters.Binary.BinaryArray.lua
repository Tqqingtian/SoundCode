---@class System.Runtime.Serialization.Formatters.Binary.BinaryArray : System.Object
local m = {}

---@virtual
---@param sout System.Runtime.Serialization.Formatters.Binary.__BinaryWriter
function m:Write(sout) end

---@virtual
---@param input System.Runtime.Serialization.Formatters.Binary.__BinaryParser
function m:Read(input) end

System.Runtime.Serialization.Formatters.Binary.BinaryArray = m
return m
