---@class System.DelegateSerializationHolder.DelegateEntry : System.Object
---@field public delegateEntry System.DelegateSerializationHolder.DelegateEntry
local m = {}

---@param info System.Runtime.Serialization.SerializationInfo
---@param index number
---@return fun(...:any|any[]):
function m:DeserializeDelegate(info, index) end

System.DelegateSerializationHolder.DelegateEntry = m
return m
