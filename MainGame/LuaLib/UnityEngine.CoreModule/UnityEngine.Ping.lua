---@class UnityEngine.Ping : System.Object
---@field public isDone boolean
---@field public time number
---@field public ip string
local m = {}

function m:DestroyPing() end

UnityEngine.Ping = m
return m
