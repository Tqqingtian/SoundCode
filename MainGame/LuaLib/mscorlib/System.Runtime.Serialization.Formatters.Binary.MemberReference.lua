---@class System.Runtime.Serialization.Formatters.Binary.MemberReference : System.Object
local m = {}

---@virtual
---@param sout System.Runtime.Serialization.Formatters.Binary.__BinaryWriter
function m:Write(sout) end

---@virtual
---@param input System.Runtime.Serialization.Formatters.Binary.__BinaryParser
function m:Read(input) end

function m:Dump() end

System.Runtime.Serialization.Formatters.Binary.MemberReference = m
return m
