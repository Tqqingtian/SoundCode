---@class System.Collections.Generic.List_1.SynchronizedList_T_ : System.Object
---@field public Count number
---@field public IsReadOnly boolean
---@field public Item any
local m = {}

---@virtual
---@param item any
function m:Add(item) end

---@virtual
function m:Clear() end

---@virtual
---@param item any
---@return boolean
function m:Contains(item) end

---@virtual
---@param array any[]
---@param arrayIndex number
function m:CopyTo(array, arrayIndex) end

---@virtual
---@param item any
---@return boolean
function m:Remove(item) end

---@virtual
---@param item any
---@return number
function m:IndexOf(item) end

---@virtual
---@param index number
---@param item any
function m:Insert(index, item) end

---@virtual
---@param index number
function m:RemoveAt(index) end

System.Collections.Generic.List_1.SynchronizedList_T_ = m
return m
