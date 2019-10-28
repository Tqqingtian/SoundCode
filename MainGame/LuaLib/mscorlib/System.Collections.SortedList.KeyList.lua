---@class System.Collections.SortedList.KeyList : System.Object
---@field public Count number
---@field public IsReadOnly boolean
---@field public IsFixedSize boolean
---@field public IsSynchronized boolean
---@field public SyncRoot any
---@field public Item any
local m = {}

---@virtual
---@param key any
---@return number
function m:Add(key) end

---@virtual
function m:Clear() end

---@virtual
---@param key any
---@return boolean
function m:Contains(key) end

---@virtual
---@param array System.Array
---@param arrayIndex number
function m:CopyTo(array, arrayIndex) end

---@virtual
---@param index number
---@param value any
function m:Insert(index, value) end

---@virtual
---@return System.Collections.IEnumerator
function m:GetEnumerator() end

---@virtual
---@param key any
---@return number
function m:IndexOf(key) end

---@virtual
---@param key any
function m:Remove(key) end

---@virtual
---@param index number
function m:RemoveAt(index) end

System.Collections.SortedList.KeyList = m
return m
