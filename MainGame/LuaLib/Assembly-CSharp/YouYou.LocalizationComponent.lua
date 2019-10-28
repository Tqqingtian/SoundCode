---@class TQ.LocalizationComponent : TQ.TQBaseComponent
---@field public CurrLanguage TQ.TQLanguage
local m = {}

---@overload fun(key:string):
---@param key string
---@param ... any|any[]
---@return string
function m:GetString(key, ...) end

---@virtual
function m:Shutdown() end

TQ.LocalizationComponent = m
return m
