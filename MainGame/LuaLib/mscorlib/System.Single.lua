---@class System.Single : System.ValueType
---@field public MinValue number @static
---@field public Epsilon number @static
---@field public MaxValue number @static
---@field public PositiveInfinity number @static
---@field public NegativeInfinity number @static
---@field public NaN number @static
local m = {}

---@static
---@param f number
---@return boolean
function m.IsInfinity(f) end

---@static
---@param f number
---@return boolean
function m.IsPositiveInfinity(f) end

---@static
---@param f number
---@return boolean
function m.IsNegativeInfinity(f) end

---@static
---@param f number
---@return boolean
function m.IsNaN(f) end

---@static
---@param f number
---@return boolean
function m.IsFinite(f) end

---@overload fun(value:number): @virtual
---@virtual
---@param value any
---@return number
function m:CompareTo(value) end

---@static
---@param left number
---@param right number
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left number
---@param right number
---@return boolean
function m.op_Inequality(left, right) end

---@static
---@param left number
---@param right number
---@return boolean
function m.op_LessThan(left, right) end

---@static
---@param left number
---@param right number
---@return boolean
function m.op_GreaterThan(left, right) end

---@static
---@param left number
---@param right number
---@return boolean
function m.op_LessThanOrEqual(left, right) end

---@static
---@param left number
---@param right number
---@return boolean
function m.op_GreaterThanOrEqual(left, right) end

---@overload fun(obj:number): @virtual
---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@virtual
---@return number
function m:GetHashCode() end

---@overload fun(provider:System.IFormatProvider): @virtual
---@overload fun(format:string):
---@overload fun(format:string, provider:System.IFormatProvider): @virtual
---@virtual
---@return string
function m:ToString() end

---@overload fun(s:string, style:System.Globalization.NumberStyles): @static
---@overload fun(s:string, provider:System.IFormatProvider): @static
---@overload fun(s:string, style:System.Globalization.NumberStyles, provider:System.IFormatProvider): @static
---@static
---@param s string
---@return number
function m.Parse(s) end

---@overload fun(s:string, style:System.Globalization.NumberStyles, provider:System.IFormatProvider):(, System.Single) @static
---@static
---@param s string
---@return boolean, System.Single
function m.TryParse(s) end

---@virtual
---@return System.TypeCode
function m:GetTypeCode() end

---@overload fun(expected:number, message:string) @extension
---@overload fun(expected:number, tolerance:number) @extension
---@overload fun(expected:number, tolerance:number, message:string) @extension
---@extension
---@param expected number
function m.MustBeApproximatelyEqual(expected) end

---@overload fun(expected:number, message:string) @extension
---@overload fun(expected:number, tolerance:number) @extension
---@overload fun(expected:number, tolerance:number, message:string) @extension
---@extension
---@param expected number
function m.MustNotBeApproximatelyEqual(expected) end

System.Single = m
return m
