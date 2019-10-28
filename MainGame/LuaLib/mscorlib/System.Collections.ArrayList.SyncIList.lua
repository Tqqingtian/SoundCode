---@class System.Collections.ArrayList.SyncIList : System.Object
---@field public Count number
---@field public IsReadOnly boolean
---@field public IsFixedSize boolean
---@field public IsSynchronized boolean
---@field public Item any
---@field public SyncRoot any
local m = {}

---@virtual
---@param value any
---@return number
function m:Add(value) end

---@virtual
function m:Clear() end

---@virtual
---@param item any
---@return boolean
function m:Contains(item) end

---@virtual
---@param array System.Array
---@param index number
function m:CopyTo(array, index) end

---@virtual
---@return System.Collections.IEnumerator
function m:GetEnumerator() end

---@virtual
---@param value any
---@return number
function m:IndexOf(value) end

---@virtual
---@param index number
---@param value any
function m:Insert(index, value) end

---@virtual
---@param value any
function m:Remove(value) end

---@virtual
---@param index number
function m:RemoveAt(index) end

System.Collections.ArrayList.SyncIList = m
return m
