---@class System.Reflection.EventInfo.AddEvent_2_T_D_ : System.MulticastDelegate
local m = {}

---@virtual
---@param _this any
---@param dele any
function m:Invoke(_this, dele) end

---@virtual
---@param _this any
---@param dele any
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(_this, dele, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

System.Reflection.EventInfo.AddEvent_2_T_D_ = m
return m
