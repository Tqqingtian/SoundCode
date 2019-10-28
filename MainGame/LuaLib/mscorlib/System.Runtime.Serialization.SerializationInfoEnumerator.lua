---@class System.Runtime.Serialization.SerializationInfoEnumerator : System.Object
---@field public Current System.Runtime.Serialization.SerializationEntry
---@field public Name string
---@field public Value any
---@field public ObjectType System.Type
local m = {}

---@virtual
---@return boolean
function m:MoveNext() end

---@virtual
function m:Reset() end

System.Runtime.Serialization.SerializationInfoEnumerator = m
return m
