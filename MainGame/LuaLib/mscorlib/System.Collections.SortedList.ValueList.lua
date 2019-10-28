---@class System.Collections.SortedList.ValueList : System.Object
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
---@param value any
---@return boolean
function m:Contains(value) end

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
---@param value any
---@return number
function m:IndexOf(value) end

---@virtual
---@param value any
function m:Remove(value) end

---@virtual
---@param index number
function m:RemoveAt(index) end

System.Collections.SortedList.ValueList = m
return m
