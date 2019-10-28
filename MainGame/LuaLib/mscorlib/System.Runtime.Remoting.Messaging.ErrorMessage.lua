---@class System.Runtime.Remoting.Messaging.ErrorMessage : System.Object
---@field public ArgCount number
---@field public Args any[]
---@field public HasVarArgs boolean
---@field public MethodBase System.Reflection.MethodBase
---@field public MethodName string
---@field public MethodSignature any
---@field public Properties System.Collections.IDictionary
---@field public TypeName string
---@field public Uri string
---@field public InArgCount number
---@field public InArgs any[]
---@field public LogicalCallContext System.Runtime.Remoting.Messaging.LogicalCallContext
local m = {}

---@virtual
---@param arg_num number
---@return any
function m:GetArg(arg_num) end

---@virtual
---@param arg_num number
---@return string
function m:GetArgName(arg_num) end

---@virtual
---@param index number
---@return string
function m:GetInArgName(index) end

---@virtual
---@param argNum number
---@return any
function m:GetInArg(argNum) end

System.Runtime.Remoting.Messaging.ErrorMessage = m
return m
