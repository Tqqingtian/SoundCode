---@class System.Runtime.InteropServices.WindowsRuntime.EventRegistrationToken : System.ValueType
local m = {}

---@static
---@param left System.Runtime.InteropServices.WindowsRuntime.EventRegistrationToken
---@param right System.Runtime.InteropServices.WindowsRuntime.EventRegistrationToken
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left System.Runtime.InteropServices.WindowsRuntime.EventRegistrationToken
---@param right System.Runtime.InteropServices.WindowsRuntime.EventRegistrationToken
---@return boolean
function m.op_Inequality(left, right) end

---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@virtual
---@return number
function m:GetHashCode() end

System.Runtime.InteropServices.WindowsRuntime.EventRegistrationToken = m
return m
