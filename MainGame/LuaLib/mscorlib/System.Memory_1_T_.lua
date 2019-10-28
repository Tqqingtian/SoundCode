---@class System.Memory_1_T_ : System.ValueType
---@field public Empty System.Memory_1_T_ @static
---@field public Length number
---@field public IsEmpty boolean
---@field public Span System.ValueType
local m = {}

---@overload fun(arraySegment:any[]): @static
---@overload fun(memory:System.Memory_1_T_): @static
---@static
---@param array any[]
---@return System.Memory_1_T_
function m.op_Implicit(array) end

---@overload fun(start:number, length:number):
---@param start number
---@return System.Memory_1_T_
function m:Slice(start) end

---@overload fun():
---@param pin boolean
---@return System.Buffers.MemoryHandle
function m:Retain(pin) end

---@return boolean, System.ArraySegment_1_T_
function m:TryGetArray() end

---@return any[]
function m:ToArray() end

---@overload fun(other:System.Memory_1_T_):
---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@virtual
---@return number
function m:GetHashCode() end

System.Memory_1_T_ = m
return m
