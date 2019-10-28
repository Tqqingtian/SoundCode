---@class System.Runtime.Remoting.Messaging.IMethodCallMessage : table
---@field public InArgCount number
---@field public InArgs any[]
local m = {}

---@abstract
---@param argNum number
---@return any
function m:GetInArg(argNum) end

---@abstract
---@param index number
---@return string
function m:GetInArgName(index) end

System.Runtime.Remoting.Messaging.IMethodCallMessage = m
return m
