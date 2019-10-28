---@class System.Security.Principal.IdentityNotMappedException : System.SystemException
---@field public UnmappedIdentities System.Security.Principal.IdentityReferenceCollection
local m = {}

---@virtual
---@param serializationInfo System.Runtime.Serialization.SerializationInfo
---@param streamingContext System.Runtime.Serialization.StreamingContext
function m:GetObjectData(serializationInfo, streamingContext) end

System.Security.Principal.IdentityNotMappedException = m
return m
