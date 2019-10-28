---@class System.TimeSpan : System.ValueType
---@field public TicksPerMillisecond number @static
---@field public TicksPerSecond number @static
---@field public TicksPerMinute number @static
---@field public TicksPerHour number @static
---@field public TicksPerDay number @static
---@field public Zero System.TimeSpan @static
---@field public MaxValue System.TimeSpan @static
---@field public MinValue System.TimeSpan @static
---@field public Ticks number
---@field public Days number
---@field public Hours number
---@field public Milliseconds number
---@field public Minutes number
---@field public Seconds number
---@field public TotalDays number
---@field public TotalHours number
---@field public TotalMilliseconds number
---@field public TotalMinutes number
---@field public TotalSeconds number
local m = {}

---@param ts System.TimeSpan
---@return System.TimeSpan
function m:Add(ts) end

---@static
---@param t1 System.TimeSpan
---@param t2 System.TimeSpan
---@return number
function m.Compare(t1, t2) end

---@overload fun(value:System.TimeSpan): @virtual
---@virtual
---@param value any
---@return number
function m:CompareTo(value) end

---@static
---@param value number
---@return System.TimeSpan
function m.FromDays(value) end

---@return System.TimeSpan
function m:Duration() end

---@overload fun(obj:System.TimeSpan): @virtual
---@overload fun(t1:System.TimeSpan, t2:System.TimeSpan): @static
---@virtual
---@param value any
---@return boolean
function m:Equals(value) end

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@param value number
---@return System.TimeSpan
function m.FromHours(value) end

---@static
---@param value number
---@return System.TimeSpan
function m.FromMilliseconds(value) end

---@static
---@param value number
---@return System.TimeSpan
function m.FromMinutes(value) end

---@return System.TimeSpan
function m:Negate() end

---@static
---@param value number
---@return System.TimeSpan
function m.FromSeconds(value) end

---@param ts System.TimeSpan
---@return System.TimeSpan
function m:Subtract(ts) end

---@static
---@param value number
---@return System.TimeSpan
function m.FromTicks(value) end

---@overload fun(input:string, formatProvider:System.IFormatProvider): @static
---@static
---@param s string
---@return System.TimeSpan
function m.Parse(s) end

---@overload fun(input:string, formats:string[], formatProvider:System.IFormatProvider): @static
---@overload fun(input:string, format:string, formatProvider:System.IFormatProvider, styles:System.Globalization.TimeSpanStyles): @static
---@overload fun(input:string, formats:string[], formatProvider:System.IFormatProvider, styles:System.Globalization.TimeSpanStyles): @static
---@static
---@param input string
---@param format string
---@param formatProvider System.IFormatProvider
---@return System.TimeSpan
function m.ParseExact(input, format, formatProvider) end

---@overload fun(input:string, formatProvider:System.IFormatProvider):(, System.TimeSpan) @static
---@static
---@param s string
---@return boolean, System.TimeSpan
function m.TryParse(s) end

---@overload fun(input:string, formats:string[], formatProvider:System.IFormatProvider):(, System.TimeSpan) @static
---@overload fun(input:string, format:string, formatProvider:System.IFormatProvider, styles:System.Globalization.TimeSpanStyles):(, System.TimeSpan) @static
---@overload fun(input:string, formats:string[], formatProvider:System.IFormatProvider, styles:System.Globalization.TimeSpanStyles):(, System.TimeSpan) @static
---@static
---@param input string
---@param format string
---@param formatProvider System.IFormatProvider
---@return boolean, System.TimeSpan
function m.TryParseExact(input, format, formatProvider) end

---@overload fun(format:string):
---@overload fun(format:string, formatProvider:System.IFormatProvider): @virtual
---@virtual
---@return string
function m:ToString() end

---@static
---@param t System.TimeSpan
---@return System.TimeSpan
function m.op_UnaryNegation(t) end

---@static
---@param t1 System.TimeSpan
---@param t2 System.TimeSpan
---@return System.TimeSpan
function m.op_Subtraction(t1, t2) end

---@static
---@param t System.TimeSpan
---@return System.TimeSpan
function m.op_UnaryPlus(t) end

---@static
---@param t1 System.TimeSpan
---@param t2 System.TimeSpan
---@return System.TimeSpan
function m.op_Addition(t1, t2) end

---@static
---@param t1 System.TimeSpan
---@param t2 System.TimeSpan
---@return boolean
function m.op_Equality(t1, t2) end

---@static
---@param t1 System.TimeSpan
---@param t2 System.TimeSpan
---@return boolean
function m.op_Inequality(t1, t2) end

---@static
---@param t1 System.TimeSpan
---@param t2 System.TimeSpan
---@return boolean
function m.op_LessThan(t1, t2) end

---@static
---@param t1 System.TimeSpan
---@param t2 System.TimeSpan
---@return boolean
function m.op_LessThanOrEqual(t1, t2) end

---@static
---@param t1 System.TimeSpan
---@param t2 System.TimeSpan
---@return boolean
function m.op_GreaterThan(t1, t2) end

---@static
---@param t1 System.TimeSpan
---@param t2 System.TimeSpan
---@return boolean
function m.op_GreaterThanOrEqual(t1, t2) end

System.TimeSpan = m
return m
