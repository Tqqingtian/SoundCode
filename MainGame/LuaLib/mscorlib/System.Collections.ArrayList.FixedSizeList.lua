---@class System.Collections.ArrayList.FixedSizeList : System.Object
---@field public Count number
---@field public IsReadOnly boolean
---@field public IsFixedSize boolean
---@field public IsSynchronized boolean
---@field public Item any
---@field public SyncRoot any
local m = {}

---@virtual
---@param obj any
---@return number
function m:Add(obj) end

---@virtual
function m:Clear() end

---@virtual
---@param obj any
---@return boolean
function m:Contains(obj) end

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
---@param obj any
function m:Insert(index, obj) end

---@virtual
---@param value any
function m:Remove(value) end

---@virtual
---@param index number
function m:RemoveAt(index) end

System.Collections.ArrayList.FixedSizeList = m
return m
