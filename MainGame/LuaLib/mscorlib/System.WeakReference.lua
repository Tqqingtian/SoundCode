---@class System.WeakReference : System.Object
---@field public IsAlive boolean
---@field public Target any
---@field public TrackResurrection boolean
local m = {}

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

System.WeakReference = m
return m
