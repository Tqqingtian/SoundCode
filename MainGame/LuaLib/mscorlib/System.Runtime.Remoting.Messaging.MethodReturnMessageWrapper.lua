---@class System.Runtime.Remoting.Messaging.MethodReturnMessageWrapper : System.Runtime.Remoting.Messaging.InternalMessageWrapper
---@field public ArgCount number
---@field public Args any[]
---@field public Exception System.Exception
---@field public HasVarArgs boolean
---@field public LogicalCallContext System.Runtime.Remoting.Messaging.LogicalCallContext
---@field public MethodBase System.Reflection.MethodBase
---@field public MethodName string
---@field public MethodSignature any
---@field public OutArgCount number
---@field public OutArgs any[]
---@field public Properties System.Collections.IDictionary
---@field public ReturnValue any
---@field public TypeName string
---@field public Uri string
local m = {}

---@virtual
---@param argNum number
---@return any
function m:GetArg(argNum) end

---@virtual
---@param index number
---@return string
function m:GetArgName(index) end

---@virtual
---@param argNum number
---@return any
function m:GetOutArg(argNum) end

---@virtual
---@param index number
---@return string
function m:GetOutArgName(index) end

System.Runtime.Remoting.Messaging.MethodReturnMessageWrapper = m
return m
