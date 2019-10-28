---@class System.Collections.SortedList.SyncSortedList : System.Collections.SortedList
---@field public Count number
---@field public SyncRoot any
---@field public IsReadOnly boolean
---@field public IsFixedSize boolean
---@field public IsSynchronized boolean
---@field public Item any
---@field public Capacity number
local m = {}

---@virtual
---@param key any
---@param value any
function m:Add(key, value) end

---@virtual
function m:Clear() end

---@virtual
---@return any
function m:Clone() end

---@virtual
---@param key any
---@return boolean
function m:Contains(key) end

---@virtual
---@param key any
---@return boolean
function m:ContainsKey(key) end

---@virtual
---@param key any
---@return boolean
function m:ContainsValue(key) end

---@virtual
---@param array System.Array
---@param index number
function m:CopyTo(array, index) end

---@virtual
---@param index number
---@return any
function m:GetByIndex(index) end

---@virtual
---@return System.Collections.IDictionaryEnumerator
function m:GetEnumerator() end

---@virtual
---@param index number
---@return any
function m:GetKey(index) end

---@virtual
---@return System.Collections.IList
function m:GetKeyList() end

---@virtual
---@return System.Collections.IList
function m:GetValueList() end

---@virtual
---@param key any
---@return number
function m:IndexOfKey(key) end

---@virtual
---@param value any
---@return number
function m:IndexOfValue(value) end

---@virtual
---@param index number
function m:RemoveAt(index) end

---@virtual
---@param key any
function m:Remove(key) end

---@virtual
---@param index number
---@param value any
function m:SetByIndex(index, value) end

---@virtual
function m:TrimToSize() end

System.Collections.SortedList.SyncSortedList = m
return m
