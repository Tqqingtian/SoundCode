---@class System.Reflection.EventInfo.AddEventAdapter : System.MulticastDelegate
local m = {}

---@virtual
---@param _this any
---@param dele fun(...:any|any[]):
function m:Invoke(_this, dele) end

---@virtual
---@param _this any
---@param dele fun(...:any|any[]):
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(_this, dele, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

System.Reflection.EventInfo.AddEventAdapter = m
return m
