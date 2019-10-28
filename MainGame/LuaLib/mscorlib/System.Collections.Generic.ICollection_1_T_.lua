---@class System.Collections.Generic.ICollection_1_T_ : table
---@field public Count number
---@field public IsReadOnly boolean
local m = {}

---@abstract
---@param item any
function m:Add(item) end

---@abstract
function m:Clear() end

---@abstract
---@param item any
---@return boolean
function m:Contains(item) end

---@abstract
---@param array any[]
---@param arrayIndex number
function m:CopyTo(array, arrayIndex) end

---@abstract
---@param item any
---@return boolean
function m:Remove(item) end

System.Collections.Generic.ICollection_1_T_ = m
return m
