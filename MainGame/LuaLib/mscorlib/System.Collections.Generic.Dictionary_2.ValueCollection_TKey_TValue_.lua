---@class System.Collections.Generic.Dictionary_2.ValueCollection_TKey_TValue_ : System.Object
---@field public Count number
local m = {}

---@return System.ValueType
function m:GetEnumerator() end

---@virtual
---@param array any[]
---@param index number
function m:CopyTo(array, index) end

System.Collections.Generic.Dictionary_2.ValueCollection_TKey_TValue_ = m
return m
