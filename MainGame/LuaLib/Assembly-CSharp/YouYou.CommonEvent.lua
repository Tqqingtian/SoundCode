---@class TQ.CommonEvent : System.Object
---@field public dic table<number, System.Collections.Generic.LinkedList_1_TQ_CommonEvent_OnActionHandler_>
local m = {}

---@param key number
---@param handler fun(userData:any)
function m:AddEventListener(key, handler) end

---@param key number
---@param handler fun(userData:any)
function m:RemoveEventListener(key, handler) end

---@overload fun(key:number)
---@param key number
---@param userDate any
function m:Dispatch(key, userDate) end

---@virtual
function m:Dispose() end

TQ.CommonEvent = m
return m
