---@class System.Runtime.Serialization.Formatters.Binary.MessageEnd : System.Object
local m = {}

---@virtual
---@param sout System.Runtime.Serialization.Formatters.Binary.__BinaryWriter
function m:Write(sout) end

---@virtual
---@param input System.Runtime.Serialization.Formatters.Binary.__BinaryParser
function m:Read(input) end

---@overload fun(sout:System.IO.Stream)
function m:Dump() end

System.Runtime.Serialization.Formatters.Binary.MessageEnd = m
return m
