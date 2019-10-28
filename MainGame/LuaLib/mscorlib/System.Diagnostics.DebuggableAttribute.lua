---@class System.Diagnostics.DebuggableAttribute : System.Attribute
---@field public IsJITTrackingEnabled boolean
---@field public IsJITOptimizerDisabled boolean
---@field public DebuggingFlags System.Diagnostics.DebuggableAttribute.DebuggingModes
local m = {}

System.Diagnostics.DebuggableAttribute = m
return m
