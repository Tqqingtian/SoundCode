---@class System.BadImageFormatException : System.SystemException
---@field public Message string
---@field public FileName string
---@field public FusionLog string
local m = {}

---@virtual
---@return string
function m:ToString() end

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

System.BadImageFormatException = m
return m
