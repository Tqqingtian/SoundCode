---@class System.Decimal : System.ValueType
---@field public Zero System.Decimal @static
---@field public One System.Decimal @static
---@field public MinusOne System.Decimal @static
---@field public MaxValue System.Decimal @static
---@field public MinValue System.Decimal @static
local m = {}

---@static
---@param value System.Decimal
---@return number
function m.ToOACurrency(value) end

---@static
---@param cy number
---@return System.Decimal
function m.FromOACurrency(cy) end

---@static
---@param d1 System.Decimal
---@param d2 System.Decimal
---@return System.Decimal
function m.Add(d1, d2) end

---@static
---@param d System.Decimal
---@return System.Decimal
function m.Ceiling(d) end

---@static
---@param d1 System.Decimal
---@param d2 System.Decimal
---@return number
function m.Compare(d1, d2) end

---@overload fun(value:System.Decimal): @virtual
---@virtual
---@param value any
---@return number
function m:CompareTo(value) end

---@static
---@param d1 System.Decimal
---@param d2 System.Decimal
---@return System.Decimal
function m.Divide(d1, d2) end

---@overload fun(value:System.Decimal): @virtual
---@overload fun(d1:System.Decimal, d2:System.Decimal): @static
---@virtual
---@param value any
---@return boolean
function m:Equals(value) end

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@param d System.Decimal
---@return System.Decimal
function m.Floor(d) end

---@overload fun(format:string):
---@overload fun(provider:System.IFormatProvider): @virtual
---@overload fun(format:string, provider:System.IFormatProvider): @virtual
---@virtual
---@return string
function m:ToString() end

---@overload fun(s:string, style:System.Globalization.NumberStyles): @static
---@overload fun(s:string, provider:System.IFormatProvider): @static
---@overload fun(s:string, style:System.Globalization.NumberStyles, provider:System.IFormatProvider): @static
---@static
---@param s string
---@return System.Decimal
function m.Parse(s) end

---@overload fun(s:string, style:System.Globalization.NumberStyles, provider:System.IFormatProvider):(, System.Decimal) @static
---@static
---@param s string
---@return boolean, System.Decimal
function m.TryParse(s) end

---@static
---@param d System.Decimal
---@return number[]
function m.GetBits(d) end

---@static
---@param d1 System.Decimal
---@param d2 System.Decimal
---@return System.Decimal
function m.Remainder(d1, d2) end

---@static
---@param d1 System.Decimal
---@param d2 System.Decimal
---@return System.Decimal
function m.Multiply(d1, d2) end

---@static
---@param d System.Decimal
---@return System.Decimal
function m.Negate(d) end

---@overload fun(d:System.Decimal, decimals:number): @static
---@overload fun(d:System.Decimal, mode:System.MidpointRounding): @static
---@overload fun(d:System.Decimal, decimals:number, mode:System.MidpointRounding): @static
---@static
---@param d System.Decimal
---@return System.Decimal
function m.Round(d) end

---@static
---@param d1 System.Decimal
---@param d2 System.Decimal
---@return System.Decimal
function m.Subtract(d1, d2) end

---@static
---@param value System.Decimal
---@return number
function m.ToByte(value) end

---@static
---@param value System.Decimal
---@return number
function m.ToSByte(value) end

---@static
---@param value System.Decimal
---@return number
function m.ToInt16(value) end

---@static
---@param d System.Decimal
---@return number
function m.ToDouble(d) end

---@static
---@param d System.Decimal
---@return number
function m.ToInt32(d) end

---@static
---@param d System.Decimal
---@return number
function m.ToInt64(d) end

---@static
---@param value System.Decimal
---@return number
function m.ToUInt16(value) end

---@static
---@param d System.Decimal
---@return number
function m.ToUInt32(d) end

---@static
---@param d System.Decimal
---@return number
function m.ToUInt64(d) end

---@static
---@param d System.Decimal
---@return number
function m.ToSingle(d) end

---@static
---@param d System.Decimal
---@return System.Decimal
function m.Truncate(d) end

---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@static
---@param value number
---@return System.Decimal
function m.op_Implicit(value) end

---@overload fun(value:number): @static
---@overload fun(value:System.Decimal): @static
---@overload fun(value:System.Decimal): @static
---@overload fun(value:System.Decimal): @static
---@overload fun(value:System.Decimal): @static
---@overload fun(value:System.Decimal): @static
---@overload fun(value:System.Decimal): @static
---@overload fun(value:System.Decimal): @static
---@overload fun(value:System.Decimal): @static
---@overload fun(value:System.Decimal): @static
---@overload fun(value:System.Decimal): @static
---@overload fun(value:System.Decimal): @static
---@static
---@param value number
---@return System.Decimal
function m.op_Explicit(value) end

---@static
---@param d System.Decimal
---@return System.Decimal
function m.op_UnaryPlus(d) end

---@static
---@param d System.Decimal
---@return System.Decimal
function m.op_UnaryNegation(d) end

---@static
---@param d System.Decimal
---@return System.Decimal
function m.op_Increment(d) end

---@static
---@param d System.Decimal
---@return System.Decimal
function m.op_Decrement(d) end

---@static
---@param d1 System.Decimal
---@param d2 System.Decimal
---@return System.Decimal
function m.op_Addition(d1, d2) end

---@static
---@param d1 System.Decimal
---@param d2 System.Decimal
---@return System.Decimal
function m.op_Subtraction(d1, d2) end

---@static
---@param d1 System.Decimal
---@param d2 System.Decimal
---@return System.Decimal
function m.op_Multiply(d1, d2) end

---@static
---@param d1 System.Decimal
---@param d2 System.Decimal
---@return System.Decimal
function m.op_Division(d1, d2) end

---@static
---@param d1 System.Decimal
---@param d2 System.Decimal
---@return System.Decimal
function m.op_Modulus(d1, d2) end

---@static
---@param d1 System.Decimal
---@param d2 System.Decimal
---@return boolean
function m.op_Equality(d1, d2) end

---@static
---@param d1 System.Decimal
---@param d2 System.Decimal
---@return boolean
function m.op_Inequality(d1, d2) end

---@static
---@param d1 System.Decimal
---@param d2 System.Decimal
---@return boolean
function m.op_LessThan(d1, d2) end

---@static
---@param d1 System.Decimal
---@param d2 System.Decimal
---@return boolean
function m.op_LessThanOrEqual(d1, d2) end

---@static
---@param d1 System.Decimal
---@param d2 System.Decimal
---@return boolean
function m.op_GreaterThan(d1, d2) end

---@static
---@param d1 System.Decimal
---@param d2 System.Decimal
---@return boolean
function m.op_GreaterThanOrEqual(d1, d2) end

---@virtual
---@return System.TypeCode
function m:GetTypeCode() end

System.Decimal = m
return m
