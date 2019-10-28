---@class System.Runtime.Remoting.ObjRef : System.Object
---@field public ChannelInfo System.Runtime.Remoting.IChannelInfo
---@field public EnvoyInfo System.Runtime.Remoting.IEnvoyInfo
---@field public TypeInfo System.Runtime.Remoting.IRemotingTypeInfo
---@field public URI string
local m = {}

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

---@virtual
---@param context System.Runtime.Serialization.StreamingContext
---@return any
function m:GetRealObject(context) end

---@return boolean
function m:IsFromThisAppDomain() end

---@return boolean
function m:IsFromThisProcess() end

System.Runtime.Remoting.ObjRef = m
return m
