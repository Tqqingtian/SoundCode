---@class System.Collections.ObjectModel.ReadOnlyDictionary_2.DictionaryEnumerator_TKey_TValue_ : System.ValueType
---@field public Entry System.Collections.DictionaryEntry
---@field public Key any
---@field public Value any
---@field public Current any
local m = {}

---@virtual
---@return boolean
function m:MoveNext() end

---@virtual
function m:Reset() end

System.Collections.ObjectModel.ReadOnlyDictionary_2.DictionaryEnumerator_TKey_TValue_ = m
return m
