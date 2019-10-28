---@class System.Threading.RegisteredWaitHandle : System.MarshalByRefObject
local m = {}

---@param waitObject System.Threading.WaitHandle
---@return boolean
function m:Unregister(waitObject) end

System.Threading.RegisteredWaitHandle = m
return m
