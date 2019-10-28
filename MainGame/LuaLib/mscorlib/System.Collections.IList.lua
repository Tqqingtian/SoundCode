---@class System.Collections.IList : table
---@field public Item any
---@field public IsReadOnly boolean
---@field public IsFixedSize boolean
local m = {}

---@abstract
---@param value any
---@return number
function m:Add(value) end

---@abstract
---@param value any
---@return boolean
function m:Contains(value) end

---@abstract
function m:Clear() end

---@abstract
---@param value any
---@return number
function m:IndexOf(value) end

---@abstract
---@param index number
---@param value any
function m:Insert(index, value) end

---@abstract
---@param value any
function m:Remove(value) end

---@abstract
---@param index number
function m:RemoveAt(index) end

System.Collections.IList = m
return m
