---@class System.Runtime.Serialization.Formatters.Binary.ObjectNull : System.Object
local m = {}

---@virtual
---@param sout System.Runtime.Serialization.Formatters.Binary.__BinaryWriter
function m:Write(sout) end

---@overload fun(input:System.Runtime.Serialization.Formatters.Binary.__BinaryParser, binaryHeaderEnum:System.Runtime.Serialization.Formatters.Binary.BinaryHeaderEnum)
---@virtual
---@param input System.Runtime.Serialization.Formatters.Binary.__BinaryParser
function m:Read(input) end

function m:Dump() end

System.Runtime.Serialization.Formatters.Binary.ObjectNull = m
return m
