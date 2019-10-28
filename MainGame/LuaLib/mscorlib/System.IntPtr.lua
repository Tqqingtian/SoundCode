---@class System.IntPtr : System.ValueType
---@field public Zero System.IntPtr @static
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
function m:ToInt32() end

---@return number
function m:ToInt64() end

---@return System.Void*
function m:ToPointer() end

---@overload fun(format:string):
---@virtual
---@return string
function m:ToString() end

---@static
---@param value1 System.IntPtr
---@param value2 System.IntPtr
---@return boolean
function m.op_Equality(value1, value2) end

---@static
---@param value1 System.IntPtr
---@param value2 System.IntPtr
---@return boolean
function m.op_Inequality(value1, value2) end

---@overload fun(value:number): @static
---@overload fun(value:System.Void*): @static
---@overload fun(value:System.IntPtr): @static
---@overload fun(value:System.IntPtr): @static
---@overload fun(value:System.IntPtr): @static
---@static
---@param value number
---@return System.IntPtr
function m.op_Explicit(value) end

---@overload fun(index:number): @extension
---@static
---@param pointer System.IntPtr
---@param offset number
---@return System.IntPtr
function m.Add(pointer, offset) end

---@static
---@param pointer System.IntPtr
---@param offset number
---@return System.IntPtr
function m.Subtract(pointer, offset) end

---@static
---@param pointer System.IntPtr
---@param offset number
---@return System.IntPtr
function m.op_Addition(pointer, offset) end

---@static
---@param pointer System.IntPtr
---@param offset number
---@return System.IntPtr
function m.op_Subtraction(pointer, offset) end

System.IntPtr = m
return m
