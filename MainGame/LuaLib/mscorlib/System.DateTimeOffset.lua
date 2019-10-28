---@class System.DateTimeOffset : System.ValueType
---@field public MinValue System.DateTimeOffset @static
---@field public MaxValue System.DateTimeOffset @static
---@field public Now System.DateTimeOffset @static
---@field public UtcNow System.DateTimeOffset @static
---@field public DateTime System.DateTime
---@field public UtcDateTime System.DateTime
---@field public LocalDateTime System.DateTime
---@field public Date System.DateTime
---@field public Day number
---@field public DayOfWeek System.DayOfWeek
---@field public DayOfYear number
---@field public Hour number
---@field public Millisecond number
---@field public Minute number
---@field public Month number
---@field public Offset System.TimeSpan
---@field public Second number
---@field public Ticks number
---@field public UtcTicks number
---@field public TimeOfDay System.TimeSpan
---@field public Year number
local m = {}

---@param offset System.TimeSpan
---@return System.DateTimeOffset
function m:ToOffset(offset) end

---@param timeSpan System.TimeSpan
---@return System.DateTimeOffset
function m:Add(timeSpan) end

---@param days number
---@return System.DateTimeOffset
function m:AddDays(days) end

---@param hours number
---@return System.DateTimeOffset
function m:AddHours(hours) end

---@param milliseconds number
---@return System.DateTimeOffset
function m:AddMilliseconds(milliseconds) end

---@param minutes number
---@return System.DateTimeOffset
function m:AddMinutes(minutes) end

---@param months number
---@return System.DateTimeOffset
function m:AddMonths(months) end

---@param seconds number
---@return System.DateTimeOffset
function m:AddSeconds(seconds) end

---@param ticks number
---@return System.DateTimeOffset
function m:AddTicks(ticks) end

---@param years number
---@return System.DateTimeOffset
function m:AddYears(years) end

---@static
---@param first System.DateTimeOffset
---@param second System.DateTimeOffset
---@return number
function m.Compare(first, second) end

---@virtual
---@param other System.DateTimeOffset
---@return number
function m:CompareTo(other) end

---@overload fun(other:System.DateTimeOffset): @virtual
---@overload fun(first:System.DateTimeOffset, second:System.DateTimeOffset): @static
---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@param other System.DateTimeOffset
---@return boolean
function m:EqualsExact(other) end

---@static
---@param fileTime number
---@return System.DateTimeOffset
function m.FromFileTime(fileTime) end

---@static
---@param seconds number
---@return System.DateTimeOffset
function m.FromUnixTimeSeconds(seconds) end

---@static
---@param milliseconds number
---@return System.DateTimeOffset
function m.FromUnixTimeMilliseconds(milliseconds) end

---@virtual
---@return number
function m:GetHashCode() end

---@overload fun(input:string, formatProvider:System.IFormatProvider): @static
---@overload fun(input:string, formatProvider:System.IFormatProvider, styles:System.Globalization.DateTimeStyles): @static
---@static
---@param input string
---@return System.DateTimeOffset
function m.Parse(input) end

---@overload fun(input:string, format:string, formatProvider:System.IFormatProvider, styles:System.Globalization.DateTimeStyles): @static
---@overload fun(input:string, formats:string[], formatProvider:System.IFormatProvider, styles:System.Globalization.DateTimeStyles): @static
---@static
---@param input string
---@param format string
---@param formatProvider System.IFormatProvider
---@return System.DateTimeOffset
function m.ParseExact(input, format, formatProvider) end

---@overload fun(value:System.TimeSpan):
---@param value System.DateTimeOffset
---@return System.TimeSpan
function m:Subtract(value) end

---@return number
function m:ToFileTime() end

---@return number
function m:ToUnixTimeSeconds() end

---@return number
function m:ToUnixTimeMilliseconds() end

---@return System.DateTimeOffset
function m:ToLocalTime() end

---@overload fun(format:string):
---@overload fun(formatProvider:System.IFormatProvider):
---@overload fun(format:string, formatProvider:System.IFormatProvider): @virtual
---@virtual
---@return string
function m:ToString() end

---@return System.DateTimeOffset
function m:ToUniversalTime() end

---@overload fun(input:string, formatProvider:System.IFormatProvider, styles:System.Globalization.DateTimeStyles):(, System.DateTimeOffset) @static
---@static
---@param input string
---@return boolean, System.DateTimeOffset
function m.TryParse(input) end

---@overload fun(input:string, formats:string[], formatProvider:System.IFormatProvider, styles:System.Globalization.DateTimeStyles):(, System.DateTimeOffset) @static
---@static
---@param input string
---@param format string
---@param formatProvider System.IFormatProvider
---@param styles System.Globalization.DateTimeStyles
---@return boolean, System.DateTimeOffset
function m.TryParseExact(input, format, formatProvider, styles) end

---@static
---@param dateTime System.DateTime
---@return System.DateTimeOffset
function m.op_Implicit(dateTime) end

---@static
---@param dateTimeOffset System.DateTimeOffset
---@param timeSpan System.TimeSpan
---@return System.DateTimeOffset
function m.op_Addition(dateTimeOffset, timeSpan) end

---@overload fun(left:System.DateTimeOffset, right:System.DateTimeOffset): @static
---@static
---@param dateTimeOffset System.DateTimeOffset
---@param timeSpan System.TimeSpan
---@return System.DateTimeOffset
function m.op_Subtraction(dateTimeOffset, timeSpan) end

---@static
---@param left System.DateTimeOffset
---@param right System.DateTimeOffset
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left System.DateTimeOffset
---@param right System.DateTimeOffset
---@return boolean
function m.op_Inequality(left, right) end

---@static
---@param left System.DateTimeOffset
---@param right System.DateTimeOffset
---@return boolean
function m.op_LessThan(left, right) end

---@static
---@param left System.DateTimeOffset
---@param right System.DateTimeOffset
---@return boolean
function m.op_LessThanOrEqual(left, right) end

---@static
---@param left System.DateTimeOffset
---@param right System.DateTimeOffset
---@return boolean
function m.op_GreaterThan(left, right) end

---@static
---@param left System.DateTimeOffset
---@param right System.DateTimeOffset
---@return boolean
function m.op_GreaterThanOrEqual(left, right) end

System.DateTimeOffset = m
return m
