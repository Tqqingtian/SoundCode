---@class System.Runtime.Remoting.Messaging.MethodCallMessageWrapper : System.Runtime.Remoting.Messaging.InternalMessageWrapper
---@field public ArgCount number
---@field public Args any[]
---@field public HasVarArgs boolean
---@field public InArgCount number
---@field public InArgs any[]
---@field public LogicalCallContext System.Runtime.Remoting.Messaging.LogicalCallContext
---@field public MethodBase System.Reflection.MethodBase
---@field public MethodName string
---@field public MethodSignature any
---@field public Properties System.Collections.IDictionary
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
function m:GetInArg(argNum) end

---@virtual
---@param index number
---@return string
function m:GetInArgName(index) end

System.Runtime.Remoting.Messaging.MethodCallMessageWrapper = m
return m
