---@class TQ.VariableBase : System.Object
---@field public Type System.Type
---@field public ReferenceCount number
local m = {}

function m:Retain() end

function m:Release() end

TQ.VariableBase = m
return m
