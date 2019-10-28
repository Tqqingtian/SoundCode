---@class System.Math : System.Object
---@field public PI number @static
---@field public E number @static
local m = {}

---@static
---@param d number
---@return number
function m.Acos(d) end

---@static
---@param d number
---@return number
function m.Asin(d) end

---@static
---@param d number
---@return number
function m.Atan(d) end

---@static
---@param y number
---@param x number
---@return number
function m.Atan2(y, x) end

---@overload fun(a:number): @static
---@static
---@param d System.Decimal
---@return System.Decimal
function m.Ceiling(d) end

---@static
---@param d number
---@return number
function m.Cos(d) end

---@static
---@param value number
---@return number
function m.Cosh(value) end

---@overload fun(d:number): @static
---@static
---@param d System.Decimal
---@return System.Decimal
function m.Floor(d) end

---@static
---@param a number
---@return number
function m.Sin(a) end

---@static
---@param a number
---@return number
function m.Tan(a) end

---@static
---@param value number
---@return number
function m.Sinh(value) end

---@static
---@param value number
---@return number
function m.Tanh(value) end

---@overload fun(value:number, digits:number): @static
---@overload fun(value:number, mode:System.MidpointRounding): @static
---@overload fun(value:number, digits:number, mode:System.MidpointRounding): @static
---@overload fun(d:System.Decimal): @static
---@overload fun(d:System.Decimal, decimals:number): @static
---@overload fun(d:System.Decimal, mode:System.MidpointRounding): @static
---@overload fun(d:System.Decimal, decimals:number, mode:System.MidpointRounding): @static
---@static
---@param a number
---@return number
function m.Round(a) end

---@overload fun(d:number): @static
---@static
---@param d System.Decimal
---@return System.Decimal
function m.Truncate(d) end

---@static
---@param d number
---@return number
function m.Sqrt(d) end

---@overload fun(a:number, newBase:number): @static
---@static
---@param d number
---@return number
function m.Log(d) end

---@static
---@param d number
---@return number
function m.Log10(d) end

---@static
---@param d number
---@return number
function m.Exp(d) end

---@static
---@param x number
---@param y number
---@return number
function m.Pow(x, y) end

---@static
---@param x number
---@param y number
---@return number
function m.IEEERemainder(x, y) end

---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:System.Decimal): @static
---@static
---@param value number
---@return number
function m.Abs(value) end

---@overload fun(val1:number, val2:number): @static
---@overload fun(val1:number, val2:number): @static
---@overload fun(val1:number, val2:number): @static
---@overload fun(val1:number, val2:number): @static
---@overload fun(val1:number, val2:number): @static
---@overload fun(val1:number, val2:number): @static
---@overload fun(val1:number, val2:number): @static
---@overload fun(val1:number, val2:number): @static
---@overload fun(val1:number, val2:number): @static
---@overload fun(val1:System.Decimal, val2:System.Decimal): @static
---@static
---@param val1 number
---@param val2 number
---@return number
function m.Max(val1, val2) end

---@overload fun(val1:number, val2:number): @static
---@overload fun(val1:number, val2:number): @static
---@overload fun(val1:number, val2:number): @static
---@overload fun(val1:number, val2:number): @static
---@overload fun(val1:number, val2:number): @static
---@overload fun(val1:number, val2:number): @static
---@overload fun(val1:number, val2:number): @static
---@overload fun(val1:number, val2:number): @static
---@overload fun(val1:number, val2:number): @static
---@overload fun(val1:System.Decimal, val2:System.Decimal): @static
---@static
---@param val1 number
---@param val2 number
---@return number
function m.Min(val1, val2) end

---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:number): @static
---@overload fun(value:System.Decimal): @static
---@static
---@param value number
---@return number
function m.Sign(value) end

---@static
---@param a number
---@param b number
---@return number
function m.BigMul(a, b) end

---@overload fun(a:number, b:number):(, System.Int64) @static
---@static
---@param a number
---@param b number
---@return number, System.Int32
function m.DivRem(a, b) end

System.Math = m
return m
