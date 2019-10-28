---@class System.Threading.AsyncFlowControl : System.ValueType
local m = {}

---@virtual
function m:Dispose() end

function m:Undo() end

---@virtual
---@return number
function m:GetHashCode() end

---@overload fun(obj:System.Threading.AsyncFlowControl):
---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@static
---@param a System.Threading.AsyncFlowControl
---@param b System.Threading.AsyncFlowControl
---@return boolean
function m.op_Equality(a, b) end

---@static
---@param a System.Threading.AsyncFlowControl
---@param b System.Threading.AsyncFlowControl
---@return boolean
function m.op_Inequality(a, b) end

System.Threading.AsyncFlowControl = m
return m
