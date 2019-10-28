---@class System.Threading.LockCookie : System.ValueType
local m = {}

---@virtual
---@return number
function m:GetHashCode() end

---@overload fun(obj:any): @virtual
---@param obj System.Threading.LockCookie
---@return boolean
function m:Equals(obj) end

---@static
---@param a System.Threading.LockCookie
---@param b System.Threading.LockCookie
---@return boolean
function m.op_Equality(a, b) end

---@static
---@param a System.Threading.LockCookie
---@param b System.Threading.LockCookie
---@return boolean
function m.op_Inequality(a, b) end

System.Threading.LockCookie = m
return m
