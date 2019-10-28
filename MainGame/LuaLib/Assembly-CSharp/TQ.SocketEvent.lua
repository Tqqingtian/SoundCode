---@class TQ.SocketEvent : System.Object
---@field public dic table<number, System.Collections.Generic.LinkedList_1_TQ_SocketEvent_OnActionHandler_>
local m = {}

---@param key number
---@param handler fun(buffer:string)
function m:AddEventListener(key, handler) end

---@param key number
---@param handler fun(buffer:string)
function m:RemoveEventListener(key, handler) end

---@overload fun(key:number)
---@param key number
---@param buffer string
function m:Dispatch(key, buffer) end

---@virtual
function m:Dispose() end

TQ.SocketEvent = m
return m
