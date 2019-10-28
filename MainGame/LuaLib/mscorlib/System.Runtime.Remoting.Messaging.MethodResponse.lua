---@class System.Runtime.Remoting.Messaging.MethodResponse : System.Object
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
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

---@virtual
---@param argNum number
---@return any
function m:GetOutArg(argNum) end

---@virtual
---@param index number
---@return string
function m:GetOutArgName(index) end

---@virtual
---@param h System.Runtime.Remoting.Messaging.Header[]
---@return any
function m:HeaderHandler(h) end

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param ctx System.Runtime.Serialization.StreamingContext
function m:RootSetObjectData(info, ctx) end

System.Runtime.Remoting.Messaging.MethodResponse = m
return m
