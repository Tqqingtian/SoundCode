---@class System.RuntimeType.ListBuilder_1_T_ : System.ValueType
---@field public Item any
---@field public Count number
local m = {}

---@return any[]
function m:ToArray() end

---@param array any[]
---@param index number
function m:CopyTo(array, index) end

---@param item any
function m:Add(item) end

System.RuntimeType.ListBuilder_1_T_ = m
return m
