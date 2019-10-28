---@class System.Runtime.Remoting.Messaging.ArgInfo : System.Object
local m = {}

---@param inoutArgNum number
---@return number
function m:GetInOutArgIndex(inoutArgNum) end

---@virtual
---@param index number
---@return string
function m:GetInOutArgName(index) end

---@return number
function m:GetInOutArgCount() end

---@param args any[]
---@return any[]
function m:GetInOutArgs(args) end

System.Runtime.Remoting.Messaging.ArgInfo = m
return m
