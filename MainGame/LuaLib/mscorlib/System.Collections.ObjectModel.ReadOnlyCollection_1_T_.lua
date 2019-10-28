---@class System.Collections.ObjectModel.ReadOnlyCollection_1_T_ : System.Object
---@field public Count number
---@field public Item any
local m = {}

---@virtual
---@param value any
---@return boolean
function m:Contains(value) end

---@virtual
---@param array any[]
---@param index number
function m:CopyTo(array, index) end

---@virtual
---@return any
function m:GetEnumerator() end

---@virtual
---@param value any
---@return number
function m:IndexOf(value) end

System.Collections.ObjectModel.ReadOnlyCollection_1_T_ = m
return m
