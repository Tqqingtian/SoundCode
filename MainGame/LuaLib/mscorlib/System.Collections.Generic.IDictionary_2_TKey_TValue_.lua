---@class System.Collections.Generic.IDictionary_2_TKey_TValue_ : table
---@field public Item any
---@field public Keys any
---@field public Values any
local m = {}

---@abstract
---@param key any
---@return boolean
function m:ContainsKey(key) end

---@abstract
---@param key any
---@param value any
function m:Add(key, value) end

---@abstract
---@param key any
---@return boolean
function m:Remove(key) end

---@abstract
---@param key any
---@return boolean, any
function m:TryGetValue(key) end

System.Collections.Generic.IDictionary_2_TKey_TValue_ = m
return m
