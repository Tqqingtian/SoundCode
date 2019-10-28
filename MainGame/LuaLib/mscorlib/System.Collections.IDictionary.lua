---@class System.Collections.IDictionary : table
---@field public Item any
---@field public Keys System.Collections.ICollection
---@field public Values System.Collections.ICollection
---@field public IsReadOnly boolean
---@field public IsFixedSize boolean
local m = {}

---@abstract
---@param key any
---@return boolean
function m:Contains(key) end

---@abstract
---@param key any
---@param value any
function m:Add(key, value) end

---@abstract
function m:Clear() end

---@abstract
---@return System.Collections.IDictionaryEnumerator
function m:GetEnumerator() end

---@abstract
---@param key any
function m:Remove(key) end

System.Collections.IDictionary = m
return m
