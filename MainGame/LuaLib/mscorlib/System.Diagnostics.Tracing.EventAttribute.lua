---@class System.Diagnostics.Tracing.EventAttribute : System.Attribute
---@field public EventId number
---@field public ActivityOptions System.Diagnostics.Tracing.EventActivityOptions
---@field public Level System.Diagnostics.Tracing.EventLevel
---@field public Keywords System.Diagnostics.Tracing.EventKeywords
---@field public Opcode System.Diagnostics.Tracing.EventOpcode
---@field public Channel System.Diagnostics.Tracing.EventChannel
---@field public Message string
---@field public Task System.Diagnostics.Tracing.EventTask
---@field public Tags System.Diagnostics.Tracing.EventTags
---@field public Version number
local m = {}

System.Diagnostics.Tracing.EventAttribute = m
return m
