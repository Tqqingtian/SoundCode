---@class System.Collections.EmptyReadOnlyDictionaryInternal : System.Object
---@field public Count number
---@field public SyncRoot any
---@field public IsSynchronized boolean
---@field public Item any
---@field public Keys System.Collections.ICollection
---@field public Values System.Collections.ICollection
---@field public IsReadOnly boolean
---@field public IsFixedSize boolean
local m = {}

---@virtual
---@param array System.Array
---@param index number
function m:CopyTo(array, index) end

---@virtual
---@param key any
---@return boolean
function m:Contains(key) end

---@virtual
---@param key any
---@param value any
function m:Add(key, value) end

---@virtual
function m:Clear() end

---@virtual
---@return System.Collections.IDictionaryEnumerator
function m:GetEnumerator() end

---@virtual
---@param key any
function m:Remove(key) end

System.Collections.EmptyReadOnlyDictionaryInternal = m
return m
