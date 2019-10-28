---@class InvokeLua.ICalc : table
---@field public Mult number
---@field public Item any
local m = {}

---@abstract
---@param value fun(sender:any, e:PropertyChangedEventArgs)
function m:add_PropertyChanged(value) end

---@abstract
---@param value fun(sender:any, e:PropertyChangedEventArgs)
function m:remove_PropertyChanged(value) end

---@abstract
---@param a number
---@param b number
---@return number
function m:Add(a, b) end

InvokeLua.ICalc = m
return m
