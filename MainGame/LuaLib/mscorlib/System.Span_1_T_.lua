---@class System.Span_1_T_ : System.ValueType
---@field public Empty System.Span_1_T_ @static
---@field public Length number
---@field public IsEmpty boolean
---@field public Item any
local m = {}

---@static
---@param obj any
---@param objectData any
---@param length number
---@return System.Span_1_T_, any
function m.DangerousCreate(obj, objectData, length) end

function m:Clear() end

---@param value any
function m:Fill(value) end

---@param destination System.Span_1_T_
function m:CopyTo(destination) end

---@param destination System.Span_1_T_
---@return boolean
function m:TryCopyTo(destination) end

---@static
---@param left System.Span_1_T_
---@param right System.Span_1_T_
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left System.Span_1_T_
---@param right System.Span_1_T_
---@return boolean
function m.op_Inequality(left, right) end

---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@virtual
---@return number
function m:GetHashCode() end

---@overload fun(arraySegment:any[]): @static
---@overload fun(span:System.Span_1_T_): @static
---@static
---@param array any[]
---@return System.Span_1_T_
function m.op_Implicit(array) end

---@overload fun(start:number, length:number):
---@param start number
---@return System.Span_1_T_
function m:Slice(start) end

---@return any[]
function m:ToArray() end

---@return any
function m:DangerousGetPinnableReference() end

System.Span_1_T_ = m
return m
