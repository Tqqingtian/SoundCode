---@class System.UIntPtr : System.ValueType
---@field public Zero System.UIntPtr @static
---@field public Size number @static
local m = {}

---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@virtual
---@return number
function m:GetHashCode() end

---@return number
function m:ToUInt32() end

---@return number
function m:ToUInt64() end

---@return System.Void*
function m:ToPointer() end

---@virtual
---@return string
function m:ToString() end

---@static
---@param value1 System.UIntPtr
---@param value2 System.UIntPtr
---@return boolean
function m.op_Equality(value1, value2) end

---@static
---@param value1 System.UIntPtr
---@param value2 System.UIntPtr
---@return boolean
function m.op_Inequality(value1, value2) end

---@overload fun(value:System.UIntPtr): @static
---@overload fun(value:number): @static
---@overload fun(value:System.Void*): @static
---@overload fun(value:System.UIntPtr): @static
---@overload fun(value:number): @static
---@static
---@param value System.UIntPtr
---@return number
function m.op_Explicit(value) end

---@static
---@param pointer System.UIntPtr
---@param offset number
---@return System.UIntPtr
function m.Add(pointer, offset) end

---@static
---@param pointer System.UIntPtr
---@param offset number
---@return System.UIntPtr
function m.Subtract(pointer, offset) end

---@static
---@param pointer System.UIntPtr
---@param offset number
---@return System.UIntPtr
function m.op_Addition(pointer, offset) end

---@static
---@param pointer System.UIntPtr
---@param offset number
---@return System.UIntPtr
function m.op_Subtraction(pointer, offset) end

System.UIntPtr = m
return m
