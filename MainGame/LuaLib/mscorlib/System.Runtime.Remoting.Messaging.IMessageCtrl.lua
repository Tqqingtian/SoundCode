---@class System.Runtime.Remoting.Messaging.IMessageCtrl : table
local m = {}

---@abstract
---@param msToCancel number
function m:Cancel(msToCancel) end

System.Runtime.Remoting.Messaging.IMessageCtrl = m
return m
