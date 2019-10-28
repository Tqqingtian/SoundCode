---@class System.Runtime.Serialization.SafeSerializationEventArgs : System.EventArgs
---@field public StreamingContext System.Runtime.Serialization.StreamingContext
local m = {}

---@param serializedState System.Runtime.Serialization.ISafeSerializationData
function m:AddSerializedState(serializedState) end

System.Runtime.Serialization.SafeSerializationEventArgs = m
return m
