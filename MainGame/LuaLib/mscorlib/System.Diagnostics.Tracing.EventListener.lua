---@class System.Diagnostics.Tracing.EventListener : System.Object
local m = {}

---@static
---@param eventSource System.Diagnostics.Tracing.EventSource
---@return number
function m.EventSourceIndex(eventSource) end

---@overload fun(eventSource:System.Diagnostics.Tracing.EventSource, level:System.Diagnostics.Tracing.EventLevel, matchAnyKeyword:System.Diagnostics.Tracing.EventKeywords)
---@overload fun(eventSource:System.Diagnostics.Tracing.EventSource, level:System.Diagnostics.Tracing.EventLevel, matchAnyKeyword:System.Diagnostics.Tracing.EventKeywords, arguments:System.Collections.Generic.IDictionary_2_System_String_System_String_)
---@param eventSource System.Diagnostics.Tracing.EventSource
---@param level System.Diagnostics.Tracing.EventLevel
function m:EnableEvents(eventSource, level) end

---@param eventSource System.Diagnostics.Tracing.EventSource
function m:DisableEvents(eventSource) end

---@virtual
function m:Dispose() end

---@param value fun(sender:any, e:System.Diagnostics.Tracing.EventSourceCreatedEventArgs)
function m:add_EventSourceCreated(value) end

---@param value fun(sender:any, e:System.Diagnostics.Tracing.EventSourceCreatedEventArgs)
function m:remove_EventSourceCreated(value) end

---@param value fun(sender:any, e:System.Diagnostics.Tracing.EventWrittenEventArgs)
function m:add_EventWritten(value) end

---@param value fun(sender:any, e:System.Diagnostics.Tracing.EventWrittenEventArgs)
function m:remove_EventWritten(value) end

System.Diagnostics.Tracing.EventListener = m
return m
