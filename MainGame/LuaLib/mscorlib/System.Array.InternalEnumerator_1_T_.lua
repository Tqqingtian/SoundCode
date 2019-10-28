---@class System.Array.InternalEnumerator_1_T_ : System.ValueType
---@field public Current any
local m = {}

---@virtual
function m:Dispose() end

---@virtual
---@return boolean
function m:MoveNext() end

System.Array.InternalEnumerator_1_T_ = m
return m
