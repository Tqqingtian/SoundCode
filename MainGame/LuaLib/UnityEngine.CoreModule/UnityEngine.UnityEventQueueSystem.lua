---@class UnityEngine.UnityEventQueueSystem : System.Object
local m = {}

---@static
---@param eventPayloadName string
---@return string
function m.GenerateEventIdForPayload(eventPayloadName) end

---@static
---@return System.IntPtr
function m.GetGlobalEventQueue() end

UnityEngine.UnityEventQueueSystem = m
return m
