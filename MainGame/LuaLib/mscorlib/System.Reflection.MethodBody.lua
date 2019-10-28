---@class System.Reflection.MethodBody : System.Object
---@field public ExceptionHandlingClauses System.Reflection.ExceptionHandlingClause[]
---@field public LocalVariables System.Reflection.LocalVariableInfo[]
---@field public InitLocals boolean
---@field public LocalSignatureMetadataToken number
---@field public MaxStackSize number
local m = {}

---@virtual
---@return string
function m:GetILAsByteArray() end

System.Reflection.MethodBody = m
return m
