---@class System.Collections.Generic.Dictionary_2.Enumerator_TKey_TValue_ : System.ValueType
---@field public Current System.ValueType
local m = {}

---@virtual
---@return boolean
function m:MoveNext() end

---@virtual
function m:Dispose() end

System.Collections.Generic.Dictionary_2.Enumerator_TKey_TValue_ = m
return m
