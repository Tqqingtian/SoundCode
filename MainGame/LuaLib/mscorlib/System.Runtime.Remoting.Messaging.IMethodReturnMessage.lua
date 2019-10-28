---@class System.Runtime.Remoting.Messaging.IMethodReturnMessage : table
---@field public Exception System.Exception
---@field public OutArgCount number
---@field public OutArgs any[]
---@field public ReturnValue any
local m = {}

---@abstract
---@param argNum number
---@return any
function m:GetOutArg(argNum) end

---@abstract
---@param index number
---@return string
function m:GetOutArgName(index) end

System.Runtime.Remoting.Messaging.IMethodReturnMessage = m
return m
