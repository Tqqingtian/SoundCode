---@class System.DateTime : System.ValueType
---@field public MinValue System.DateTime @static
---@field public MaxValue System.DateTime @static
---@field public Now System.DateTime @static
---@field public UtcNow System.DateTime @static
---@field public Today System.DateTime @static
---@field public Date System.DateTime
---@field public Day number
---@field public DayOfWeek System.DayOfWeek
---@field public DayOfYear number
---@field public Hour number
---@field public Kind System.DateTimeKind
---@field public Millisecond number
---@field public Minute number
---@field public Month number
---@field public Second number
---@field public Ticks number
---@field public TimeOfDay System.TimeSpan
---@field public Year number
local m = {}

---@param value System.TimeSpan
---@return System.DateTime
function m:Add(value) end

---@param value number
---@return System.DateTime
function m:AddDays(value) end

---@param value number
---@return System.DateTime
function m:AddHours(value) end

---@param value number
---@return System.DateTime
function m:AddMilliseconds(value) end

---@param value number
---@return System.DateTime
function m:AddMinutes(value) end

---@param months number
---@return System.DateTime
function m:AddMonths(months) end

---@param value number
---@return System.DateTime
function m:AddSeconds(value) end

---@param value number
---@return System.DateTime
function m:AddTicks(value) end

---@param value number
---@return System.DateTime
function m:AddYears(value) end

---@static
---@param t1 System.DateTime
---@param t2 System.DateTime
---@return number
function m.Compare(t1, t2) end

---@overload fun(value:System.DateTime): @virtual
---@virtual
---@param value any
---@return number
function m:CompareTo(value) end

---@static
---@param year number
---@param month number
---@return number
function m.DaysInMonth(year, month) end

---@overload fun(value:System.DateTime): @virtual
---@overload fun(t1:System.DateTime, t2:System.DateTime): @static
---@virtual
---@param value any
---@return boolean
function m:Equals(value) end

---@static
---@param dateData number
---@return System.DateTime
function m.FromBinary(dateData) end

---@static
---@param fileTime number
---@return System.DateTime
function m.FromFileTime(fileTime) end

---@static
---@param fileTime number
---@return System.DateTime
function m.FromFileTimeUtc(fileTime) end

---@static
---@param d number
---@return System.DateTime
function m.FromOADate(d) end

---@return boolean
function m:IsDaylightSavingTime() end

---@static
---@param value System.DateTime
---@param kind System.DateTimeKind
---@return System.DateTime
function m.SpecifyKind(value, kind) end

---@return number
function m:ToBinary() end

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@param year number
---@return boolean
function m.IsLeapYear(year) end

---@overload fun(s:string, provider:System.IFormatProvider): @static
---@overload fun(s:string, provider:System.IFormatProvider, styles:System.Globalization.DateTimeStyles): @static
---@static
---@param s string
---@return System.DateTime
function m.Parse(s) end

---@overload fun(s:string, format:string, provider:System.IFormatProvider, style:System.Globalization.DateTimeStyles): @static
---@overload fun(s:string, formats:string[], provider:System.IFormatProvider, style:System.Globalization.DateTimeStyles): @static
---@static
---@param s string
---@param format string
---@param provider System.IFormatProvider
---@return System.DateTime
function m.ParseExact(s, format, provider) end

---@overload fun(value:System.TimeSpan):
---@param value System.DateTime
---@return System.TimeSpan
function m:Subtract(value) end

---@return number
function m:ToOADate() end

---@return number
function m:ToFileTime() end

---@return number
function m:ToFileTimeUtc() end

---@return System.DateTime
function m:ToLocalTime() end

---@return string
function m:ToLongDateString() end

---@return string
function m:ToLongTimeString() end

---@return string
function m:ToShortDateString() end

---@return string
function m:ToShortTimeString() end

---@overload fun(format:string):
---@overload fun(provider:System.IFormatProvider): @virtual
---@overload fun(format:string, provider:System.IFormatProvider): @virtual
---@virtual
---@return string
function m:ToString() end

---@return System.DateTime
function m:ToUniversalTime() end

---@overload fun(s:string, provider:System.IFormatProvider, styles:System.Globalization.DateTimeStyles):(, System.DateTime) @static
---@static
---@param s string
---@return boolean, System.DateTime
function m.TryParse(s) end

---@overload fun(s:string, formats:string[], provider:System.IFormatProvider, style:System.Globalization.DateTimeStyles):(, System.DateTime) @static
---@static
---@param s string
---@param format string
---@param provider System.IFormatProvider
---@param style System.Globalization.DateTimeStyles
---@return boolean, System.DateTime
function m.TryParseExact(s, format, provider, style) end

---@static
---@param d System.DateTime
---@param t System.TimeSpan
---@return System.DateTime
function m.op_Addition(d, t) end

---@overload fun(d1:System.DateTime, d2:System.DateTime): @static
---@static
---@param d System.DateTime
---@param t System.TimeSpan
---@return System.DateTime
function m.op_Subtraction(d, t) end

---@static
---@param d1 System.DateTime
---@param d2 System.DateTime
---@return boolean
function m.op_Equality(d1, d2) end

---@static
---@param d1 System.DateTime
---@param d2 System.DateTime
---@return boolean
function m.op_Inequality(d1, d2) end

---@static
---@param t1 System.DateTime
---@param t2 System.DateTime
---@return boolean
function m.op_LessThan(t1, t2) end

---@static
---@param t1 System.DateTime
---@param t2 System.DateTime
---@return boolean
function m.op_LessThanOrEqual(t1, t2) end

---@static
---@param t1 System.DateTime
---@param t2 System.DateTime
---@return boolean
function m.op_GreaterThan(t1, t2) end

---@static
---@param t1 System.DateTime
---@param t2 System.DateTime
---@return boolean
function m.op_GreaterThanOrEqual(t1, t2) end

---@overload fun(provider:System.IFormatProvider):
---@overload fun(format:number):
---@overload fun(format:number, provider:System.IFormatProvider):
---@return string[]
function m:GetDateTimeFormats() end

---@virtual
---@return System.TypeCode
function m:GetTypeCode() end

System.DateTime = m
return m
