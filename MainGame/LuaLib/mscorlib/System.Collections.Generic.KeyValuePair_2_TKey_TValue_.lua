---@class System.Collections.Generic.KeyValuePair_2_TKey_TValue_ : System.ValueType
---@field public Key any
---@field public Value any
local m = {}

---@virtual
---@return string
function m:ToString() end

---@return any, any
function m:Deconstruct() end

System.Collections.Generic.KeyValuePair_2_TKey_TValue_ = m
return m
