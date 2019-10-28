---@class System.Runtime.Remoting.Services.ITrackingHandler : table
local m = {}

---@abstract
---@param obj any
function m:DisconnectedObject(obj) end

---@abstract
---@param obj any
---@param or System.Runtime.Remoting.ObjRef
function m:MarshaledObject(obj, or) end

---@abstract
---@param obj any
---@param or System.Runtime.Remoting.ObjRef
function m:UnmarshaledObject(obj, or) end

System.Runtime.Remoting.Services.ITrackingHandler = m
return m
