---@class System.Diagnostics.Tracing.EventWrittenEventArgs : System.EventArgs
---@field public ActivityId System.Guid
---@field public Channel System.Diagnostics.Tracing.EventChannel
---@field public EventId number
---@field public EventName string
---@field public EventSource System.Diagnostics.Tracing.EventSource
---@field public Keywords System.Diagnostics.Tracing.EventKeywords
---@field public Level System.Diagnostics.Tracing.EventLevel
---@field public Message string
---@field public Opcode System.Diagnostics.Tracing.EventOpcode
---@field public Payload any[]
---@field public PayloadNames string[]
---@field public RelatedActivityId System.Guid
---@field public Tags System.Diagnostics.Tracing.EventTags
---@field public Task System.Diagnostics.Tracing.EventTask
---@field public Version number
local m = {}

System.Diagnostics.Tracing.EventWrittenEventArgs = m
return m
