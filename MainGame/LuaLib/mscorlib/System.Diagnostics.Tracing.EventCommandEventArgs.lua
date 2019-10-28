---@class System.Diagnostics.Tracing.EventCommandEventArgs : System.EventArgs
---@field public Arguments System.Collections.Generic.IDictionary_2_System_String_System_String_
---@field public Command System.Diagnostics.Tracing.EventCommand
local m = {}

---@param eventId number
---@return boolean
function m:DisableEvent(eventId) end

---@param eventId number
---@return boolean
function m:EnableEvent(eventId) end

System.Diagnostics.Tracing.EventCommandEventArgs = m
return m
