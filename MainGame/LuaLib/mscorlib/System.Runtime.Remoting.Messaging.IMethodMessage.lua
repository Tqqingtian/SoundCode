---@class System.Runtime.Remoting.Messaging.IMethodMessage : table
---@field public ArgCount number
---@field public Args any[]
---@field public HasVarArgs boolean
---@field public LogicalCallContext System.Runtime.Remoting.Messaging.LogicalCallContext
---@field public MethodBase System.Reflection.MethodBase
---@field public MethodName string
---@field public MethodSignature any
---@field public TypeName string
---@field public Uri string
local m = {}

---@abstract
---@param argNum number
---@return any
function m:GetArg(argNum) end

---@abstract
---@param index number
---@return string
function m:GetArgName(index) end

System.Runtime.Remoting.Messaging.IMethodMessage = m
return m
