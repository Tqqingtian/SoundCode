---@class System.ArgIterator : System.ValueType
local m = {}

function m:End() end

---@virtual
---@param o any
---@return boolean
function m:Equals(o) end

---@virtual
---@return number
function m:GetHashCode() end

---@overload fun(rth:System.RuntimeTypeHandle):
---@return System.TypedReference
function m:GetNextArg() end

---@return System.RuntimeTypeHandle
function m:GetNextArgType() end

---@return number
function m:GetRemainingCount() end

System.ArgIterator = m
return m
