---@class System.Reflection.Emit.ExceptionHandler : System.ValueType
---@field public ExceptionTypeToken number
---@field public TryOffset number
---@field public TryLength number
---@field public FilterOffset number
---@field public HandlerOffset number
---@field public HandlerLength number
---@field public Kind System.Reflection.ExceptionHandlingClauseOptions
local m = {}

---@virtual
---@return number
function m:GetHashCode() end

---@overload fun(other:System.Reflection.Emit.ExceptionHandler): @virtual
---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@static
---@param left System.Reflection.Emit.ExceptionHandler
---@param right System.Reflection.Emit.ExceptionHandler
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left System.Reflection.Emit.ExceptionHandler
---@param right System.Reflection.Emit.ExceptionHandler
---@return boolean
function m.op_Inequality(left, right) end

System.Reflection.Emit.ExceptionHandler = m
return m
