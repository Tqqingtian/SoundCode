---@class System.Globalization.GregorianCalendarHelper : System.Object
---@field public Eras number[]
local m = {}

---@param time System.DateTime
---@param months number
---@return System.DateTime
function m:AddMonths(time, months) end

---@param time System.DateTime
---@param years number
---@return System.DateTime
function m:AddYears(time, years) end

---@param time System.DateTime
---@return number
function m:GetDayOfMonth(time) end

---@param time System.DateTime
---@return System.DayOfWeek
function m:GetDayOfWeek(time) end

---@param time System.DateTime
---@return number
function m:GetDayOfYear(time) end

---@param year number
---@param month number
---@param era number
---@return number
function m:GetDaysInMonth(year, month, era) end

---@param year number
---@param era number
---@return number
function m:GetDaysInYear(year, era) end

---@param time System.DateTime
---@return number
function m:GetEra(time) end

---@param time System.DateTime
---@return number
function m:GetMonth(time) end

---@param year number
---@param era number
---@return number
function m:GetMonthsInYear(year, era) end

---@overload fun(year:number, time:System.DateTime):
---@param time System.DateTime
---@return number
function m:GetYear(time) end

---@param year number
---@param month number
---@param day number
---@param era number
---@return boolean
function m:IsLeapDay(year, month, day, era) end

---@param year number
---@param era number
---@return number
function m:GetLeapMonth(year, era) end

---@param year number
---@param month number
---@param era number
---@return boolean
function m:IsLeapMonth(year, month, era) end

---@param year number
---@param era number
---@return boolean
function m:IsLeapYear(year, era) end

---@param year number
---@param month number
---@param day number
---@param hour number
---@param minute number
---@param second number
---@param millisecond number
---@param era number
---@return System.DateTime
function m:ToDateTime(year, month, day, hour, minute, second, millisecond, era) end

---@virtual
---@param time System.DateTime
---@param rule System.Globalization.CalendarWeekRule
---@param firstDayOfWeek System.DayOfWeek
---@return number
function m:GetWeekOfYear(time, rule, firstDayOfWeek) end

---@param year number
---@param twoDigitYearMax number
---@return number
function m:ToFourDigitYear(year, twoDigitYearMax) end

System.Globalization.GregorianCalendarHelper = m
return m
