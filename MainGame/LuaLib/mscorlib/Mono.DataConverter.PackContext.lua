---@class Mono.DataConverter.PackContext : System.Object
---@field public buffer string
---@field public description string
---@field public i number
---@field public conv Mono.DataConverter
---@field public repeat number
---@field public align number
local m = {}

---@param group string
function m:Add(group) end

---@return string
function m:Get() end

Mono.DataConverter.PackContext = m
return m
