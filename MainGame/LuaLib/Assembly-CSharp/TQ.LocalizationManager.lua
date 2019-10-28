---@class TQ.LocalizationManager : TQ.ManagerBase
local m = {}

---@overload fun(key:string):
---@param key string
---@param ... any|any[]
---@return string
function m:GetString(key, ...) end

TQ.LocalizationManager = m
return m
