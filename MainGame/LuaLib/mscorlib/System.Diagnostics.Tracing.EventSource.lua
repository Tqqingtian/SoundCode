---@class System.Diagnostics.Tracing.EventSource : System.Object
---@field public CurrentThreadActivityId System.Guid @static
---@field public ConstructionException System.Exception
---@field public Guid System.Guid
---@field public Name string
---@field public Settings System.Diagnostics.Tracing.EventSourceSettings
local m = {}

---@overload fun(level:System.Diagnostics.Tracing.EventLevel, keywords:System.Diagnostics.Tracing.EventKeywords):
---@overload fun(level:System.Diagnostics.Tracing.EventLevel, keywords:System.Diagnostics.Tracing.EventKeywords, channel:System.Diagnostics.Tracing.EventChannel):
---@return boolean
function m:IsEnabled() end

---@virtual
function m:Dispose() end

---@param key string
---@return string
function m:GetTrait(key) end

---@overload fun(eventName:string, options:System.Diagnostics.Tracing.EventSourceOptions)
---@overload fun(eventName:string, data:any)
---@overload fun(eventName:string, options:System.Diagnostics.Tracing.EventSourceOptions, data:any)
---@overload fun(eventName:string, options:System.Diagnostics.Tracing.EventSourceOptions, data:any):(, any)
---@overload fun(eventName:string, options:System.Diagnostics.Tracing.EventSourceOptions, activityId:System.Guid, relatedActivityId:System.Guid, data:any):(, System.Guid, System.Guid, any)
---@param eventName string
function m:Write(eventName) end

---@param value fun(sender:any, e:System.Diagnostics.Tracing.EventCommandEventArgs)
function m:add_EventCommandExecuted(value) end

---@param value fun(sender:any, e:System.Diagnostics.Tracing.EventCommandEventArgs)
function m:remove_EventCommandExecuted(value) end

---@overload fun(eventSourceType:System.Type, assemblyPathToIncludeInManifest:string, flags:System.Diagnostics.Tracing.EventManifestOptions): @static
---@static
---@param eventSourceType System.Type
---@param assemblyPathToIncludeInManifest string
---@return string
function m.GenerateManifest(eventSourceType, assemblyPathToIncludeInManifest) end

---@static
---@param eventSourceType System.Type
---@return System.Guid
function m.GetGuid(eventSourceType) end

---@static
---@param eventSourceType System.Type
---@return string
function m.GetName(eventSourceType) end

---@static
---@return System.Collections.Generic.IEnumerable_1_System_Diagnostics_Tracing_EventSource_
function m.GetSources() end

---@static
---@param eventSource System.Diagnostics.Tracing.EventSource
---@param command System.Diagnostics.Tracing.EventCommand
---@param commandArguments System.Collections.Generic.IDictionary_2_System_String_System_String_
function m.SendCommand(eventSource, command, commandArguments) end

---@overload fun(activityId:System.Guid): @static
---@static
---@param activityId System.Guid
function m.SetCurrentThreadActivityId(activityId) end

System.Diagnostics.Tracing.EventSource = m
return m
