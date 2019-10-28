---@class System.Threading.CancellationTokenRegistration : System.ValueType
local m = {}

---@virtual
function m:Dispose() end

---@static
---@param left System.Threading.CancellationTokenRegistration
---@param right System.Threading.CancellationTokenRegistration
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left System.Threading.CancellationTokenRegistration
---@param right System.Threading.CancellationTokenRegistration
---@return boolean
function m.op_Inequality(left, right) end

---@overload fun(other:System.Threading.CancellationTokenRegistration): @virtual
---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@virtual
---@return number
function m:GetHashCode() end

System.Threading.CancellationTokenRegistration = m
return m
