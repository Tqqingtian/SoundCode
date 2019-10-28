---@class System.ModifierSpec : table
local m = {}

---@abstract
---@param type System.Type
---@return System.Type
function m:Resolve(type) end

---@abstract
---@param sb System.Text.StringBuilder
---@return System.Text.StringBuilder
function m:Append(sb) end

System.ModifierSpec = m
return m
