---@class System.Globalization.Calendar : System.Object
---@field public CurrentEra number @static
---@field public MinSupportedDateTime System.DateTime
---@field public MaxSupportedDateTime System.DateTime
---@field public AlgorithmType System.Globalization.CalendarAlgorithmType
---@field public IsReadOnly boolean
---@field public Eras number[]
---@field public TwoDigitYearMax number
local m = {}

---@virtual
---@return any
function m:Clone() end

---@static
---@param calendar System.Globalization.Calendar
---@return System.Globalization.Calendar
function m.ReadOnly(calendar) end

---@virtual
---@param time System.DateTime
---@param milliseconds number
---@return System.DateTime
function m:AddMilliseconds(time, milliseconds) end

---@virtual
---@param time System.DateTime
---@param days number
---@return System.DateTime
function m:AddDays(time, days) end

---@virtual
---@param time System.DateTime
---@param hours number
---@return System.DateTime
function m:AddHours(time, hours) end

---@virtual
---@param time System.DateTime
---@param minutes number
---@return System.DateTime
function m:AddMinutes(time, minutes) end

---@abstract
---@param time System.DateTime
---@param months number
---@return System.DateTime
function m:AddMonths(time, months) end

---@virtual
---@param time System.DateTime
---@param seconds number
---@return System.DateTime
function m:AddSeconds(time, seconds) end

---@virtual
---@param time System.DateTime
---@param weeks number
---@return System.DateTime
function m:AddWeeks(time, weeks) end

---@abstract
---@param time System.DateTime
---@param years number
---@return System.DateTime
function m:AddYears(time, years) end

---@abstract
---@param time System.DateTime
---@return number
function m:GetDayOfMonth(time) end

---@abstract
---@param time System.DateTime
---@return System.DayOfWeek
function m:GetDayOfWeek(time) end

---@abstract
---@param time System.DateTime
---@return number
function m:GetDayOfYear(time) end

---@overload fun(year:number, month:number, era:number): @abstract
---@virtual
---@param year number
---@param month number
---@return number
function m:GetDaysInMonth(year, month) end

---@overload fun(year:number, era:number): @abstract
---@virtual
---@param year number
---@return number
function m:GetDaysInYear(year) end

---@abstract
---@param time System.DateTime
---@return number
function m:GetEra(time) end

---@virtual
---@param time System.DateTime
---@return number
function m:GetHour(time) end

---@virtual
---@param time System.DateTime
---@return number
function m:GetMilliseconds(time) end

---@virtual
---@param time System.DateTime
---@return number
function m:GetMinute(time) end

---@abstract
---@param time System.DateTime
---@return number
function m:GetMonth(time) end

---@overload fun(year:number, era:number): @abstract
---@virtual
---@param year number
---@return number
function m:GetMonthsInYear(year) end

---@virtual
---@param time System.DateTime
---@return number
function m:GetSecond(time) end

---@virtual
---@param time System.DateTime
---@param rule System.Globalization.CalendarWeekRule
---@param firstDayOfWeek System.DayOfWeek
---@return number
function m:GetWeekOfYear(time, rule, firstDayOfWeek) end

---@abstract
---@param time System.DateTime
---@return number
function m:GetYear(time) end

---@overload fun(year:number, month:number, day:number, era:number): @abstract
---@virtual
---@param year number
---@param month number
---@param day number
---@return boolean
function m:IsLeapDay(year, month, day) end

---@overload fun(year:number, month:number, era:number): @abstract
---@virtual
---@param year number
---@param month number
---@return boolean
function m:IsLeapMonth(year, month) end

---@overload fun(year:number, era:number): @virtual
---@virtual
---@param year number
---@return number
function m:GetLeapMonth(year) end

---@overload fun(year:number, era:number): @abstract
---@virtual
---@param year number
---@return boolean
function m:IsLeapYear(year) end

---@overload fun(year:number, month:number, day:number, hour:number, minute:number, second:number, millisecond:number, era:number): @abstract
---@virtual
---@param year number
---@param month number
---@param day number
---@param hour number
---@param minute number
---@param second number
---@param millisecond number
---@return System.DateTime
function m:ToDateTime(year, month, day, hour, minute, second, millisecond) end

---@virtual
---@param year number
---@return number
function m:ToFourDigitYear(year) end

System.Globalization.Calendar = m
return m
