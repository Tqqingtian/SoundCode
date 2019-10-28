---@class System.Runtime.Remoting.Messaging.ReturnMessage : System.Object
---@field public ArgCount number
---@field public Args any[]
---@field public HasVarArgs boolean
---@field public LogicalCallContext System.Runtime.Remoting.Messaging.LogicalCallContext
---@field public MethodBase System.Reflection.MethodBase
---@field public MethodName string
---@field public MethodSignature any
---@field public Properties System.Collections.IDictionary
---@field public TypeName string
---@field public Uri string
---@field public Exception System.Exception
---@field public OutArgCount number
---@field public OutArgs any[]
---@field public ReturnValue any
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

System.Runtime.Remoting.Messaging.ReturnMessage = m
return m
