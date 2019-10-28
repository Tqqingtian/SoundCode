---@class System.Collections.ObjectModel.ReadOnlyDictionary_2.ValueCollection_TKey_TValue_ : System.Object
---@field public Count number
local m = {}

---@virtual
---@param array any[]
---@param arrayIndex number
function m:CopyTo(array, arrayIndex) end

---@virtual
---@return any
function m:GetEnumerator() end

System.Collections.ObjectModel.ReadOnlyDictionary_2.ValueCollection_TKey_TValue_ = m
return m
