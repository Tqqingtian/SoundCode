---@class System.Text.StringBuilderCache : System.Object
local m = {}

---@overload fun(): @static
---@static
---@param capacity number
---@return System.Text.StringBuilder
function m.Acquire(capacity) end

---@static
---@param sb System.Text.StringBuilder
function m.Release(sb) end

---@static
---@param sb System.Text.StringBuilder
---@return string
function m.GetStringAndRelease(sb) end

System.Text.StringBuilderCache = m
return m
