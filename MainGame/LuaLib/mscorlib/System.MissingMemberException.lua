---@class System.MissingMemberException : System.MemberAccessException
---@field public Message string
local m = {}

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

System.MissingMemberException = m
return m
