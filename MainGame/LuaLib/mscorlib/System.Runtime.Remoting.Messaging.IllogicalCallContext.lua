---@class System.Runtime.Remoting.Messaging.IllogicalCallContext : System.Object
local m = {}

---@param name string
function m:FreeNamedDataSlot(name) end

---@param name string
---@return any
function m:GetData(name) end

---@param name string
---@param data any
function m:SetData(name, data) end

---@return System.Runtime.Remoting.Messaging.IllogicalCallContext
function m:CreateCopy() end

System.Runtime.Remoting.Messaging.IllogicalCallContext = m
return m
