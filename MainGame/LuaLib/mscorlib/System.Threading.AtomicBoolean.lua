---@class System.Threading.AtomicBoolean : System.Object
---@field public Value boolean
local m = {}

---@param expected boolean
---@param newVal boolean
---@return boolean
function m:CompareAndExchange(expected, newVal) end

---@static
---@param value boolean
---@return System.Threading.AtomicBoolean
function m.FromValue(value) end

---@return boolean
function m:TrySet() end

---@return boolean
function m:TryRelaxedSet() end

---@param newVal boolean
---@return boolean
function m:Exchange(newVal) end

---@overload fun(rhs:any): @virtual
---@param rhs System.Threading.AtomicBoolean
---@return boolean
function m:Equals(rhs) end

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@param rhs System.Threading.AtomicBoolean
---@return boolean
function m.op_Explicit(rhs) end

---@static
---@param rhs boolean
---@return System.Threading.AtomicBoolean
function m.op_Implicit(rhs) end

System.Threading.AtomicBoolean = m
return m
