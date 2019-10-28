---@class System.Collections.Generic.IList_1_T_ : table
---@field public Item any
local m = {}

---@abstract
---@param item any
---@return number
function m:IndexOf(item) end

---@abstract
---@param index number
---@param item any
function m:Insert(index, item) end

---@abstract
---@param index number
function m:RemoveAt(index) end

System.Collections.Generic.IList_1_T_ = m
return m
