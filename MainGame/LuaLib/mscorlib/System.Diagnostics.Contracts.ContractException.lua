---@class System.Diagnostics.Contracts.ContractException : System.Exception
---@field public Kind System.Diagnostics.Contracts.ContractFailureKind
---@field public Failure string
---@field public UserMessage string
---@field public Condition string
local m = {}

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

System.Diagnostics.Contracts.ContractException = m
return m
