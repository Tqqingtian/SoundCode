---@class System.Collections.ObjectModel.ReadOnlyDictionary_2_TKey_TValue_ : System.Object
---@field public Keys any
---@field public Values any
---@field public Item any
---@field public Count number
local m = {}

---@virtual
---@param key any
---@return boolean
function m:ContainsKey(key) end

---@virtual
---@param key any
---@return boolean, any
function m:TryGetValue(key) end

---@virtual
---@return any
function m:GetEnumerator() end

System.Collections.ObjectModel.ReadOnlyDictionary_2_TKey_TValue_ = m
return m
