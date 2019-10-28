---@class System.Collections.Generic.List_1.Enumerator_T_ : System.ValueType
---@field public Current any
local m = {}

---@virtual
function m:Dispose() end

---@virtual
---@return boolean
function m:MoveNext() end

System.Collections.Generic.List_1.Enumerator_T_ = m
return m
