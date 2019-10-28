---@class System.Runtime.Remoting.Messaging.MonoMethodMessage : System.Object
---@field public ctx System.Runtime.Remoting.Messaging.LogicalCallContext
---@field public rval any
---@field public exc System.Exception
---@field public Properties System.Collections.IDictionary
---@field public ArgCount number
---@field public Args any[]
---@field public HasVarArgs boolean
---@field public LogicalCallContext System.Runtime.Remoting.Messaging.LogicalCallContext
---@field public MethodBase System.Reflection.MethodBase
---@field public MethodName string
---@field public MethodSignature any
---@field public TypeName string
---@field public Uri string
---@field public InArgCount number
---@field public InArgs any[]
---@field public Exception System.Exception
---@field public OutArgCount number
---@field public OutArgs any[]
---@field public ReturnValue any
---@field public IsAsync boolean
---@field public AsyncResult System.Runtime.Remoting.Messaging.AsyncResult
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
---@param arg_num number
---@return any
function m:GetInArg(arg_num) end

---@virtual
---@param arg_num number
---@return string
function m:GetInArgName(arg_num) end

---@virtual
---@param arg_num number
---@return any
function m:GetOutArg(arg_num) end

---@virtual
---@param arg_num number
---@return string
function m:GetOutArgName(arg_num) end

---@return boolean, System.Int32
function m:NeedsOutProcessing() end

System.Runtime.Remoting.Messaging.MonoMethodMessage = m
return m
