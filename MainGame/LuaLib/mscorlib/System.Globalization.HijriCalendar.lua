---@class System.Globalization.HijriCalendar : System.Globalization.Calendar
---@field public HijriEra number @static
---@field public MinSupportedDateTime System.DateTime
---@field public MaxSupportedDateTime System.DateTime
---@field public AlgorithmType System.Globalization.CalendarAlgorithmType
---@field public HijriAdjustment number
---@field public Eras number[]
---@field public TwoDigitYearMax number
local m = {}

---@virtual
---@param time System.DateTime
---@param months number
---@return System.DateTime
function m:AddMonths(time, months) end

---@virtual
---@param time System.DateTime
---@param years number
---@return System.DateTime
function m:AddYears(time, years) end

---@virtual
---@param time System.DateTime
---@return number
function m:GetDayOfMonth(time) end

---@virtual
---@param time System.DateTime
---@return System.DayOfWeek
function m:GetDayOfWeek(time) end

---@virtual
---@param time System.DateTime
---@return number
function m:GetDayOfYear(time) end

---@virtual
---@param year number
---@param month number
---@param era number
---@return number
function m:GetDaysInMonth(year, month, era) end

---@virtual
---@param year number
---@param era number
---@return number
function m:GetDaysInYear(year, era) end

---@virtual
---@param time System.DateTime
---@return number
function m:GetEra(time) end

---@virtual
---@param time System.DateTime
---@return number
function m:GetMonth(time) end

---@virtual
---@param year number
---@param era number
---@return number
function m:GetMonthsInYear(year, era) end

---@virtual
---@param time System.DateTime
---@return number
function m:GetYear(time) end

---@virtual
---@param year number
---@param month number
---@param day number
---@param era number
---@return boolean
function m:IsLeapDay(year, month, day, era) end

---@virtual
---@param year number
---@param era number
---@return number
function m:GetLeapMonth(year, era) end

---@virtual
---@param year number
---@param month number
---@param era number
---@return boolean
function m:IsLeapMonth(year, month, era) end

---@virtual
---@param year number
---@param era number
---@return boolean
function m:IsLeapYear(year, era) end

---@virtual
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
---@param year number
---@return number
function m:ToFourDigitYear(year) end

System.Globalization.HijriCalendar = m
return m
