---@class Unity.Collections.NativeArray_1.Enumerator_T_ : System.ValueType
---@field public Current System.ValueType
local m = {}

---@virtual
function m:Dispose() end

---@virtual
---@return boolean
function m:MoveNext() end

---@virtual
function m:Reset() end

Unity.Collections.NativeArray_1.Enumerator_T_ = m
return m
