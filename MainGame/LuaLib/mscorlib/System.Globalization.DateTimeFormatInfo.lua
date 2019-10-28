---@class System.Globalization.DateTimeFormatInfo : System.Object
---@field public InvariantInfo System.Globalization.DateTimeFormatInfo @static
---@field public CurrentInfo System.Globalization.DateTimeFormatInfo @static
---@field public AMDesignator string
---@field public Calendar System.Globalization.Calendar
---@field public DateSeparator string
---@field public FirstDayOfWeek System.DayOfWeek
---@field public CalendarWeekRule System.Globalization.CalendarWeekRule
---@field public FullDateTimePattern string
---@field public LongDatePattern string
---@field public LongTimePattern string
---@field public MonthDayPattern string
---@field public PMDesignator string
---@field public RFC1123Pattern string
---@field public ShortDatePattern string
---@field public ShortTimePattern string
---@field public SortableDateTimePattern string
---@field public TimeSeparator string
---@field public UniversalSortableDateTimePattern string
---@field public YearMonthPattern string
---@field public AbbreviatedDayNames string[]
---@field public ShortestDayNames string[]
---@field public DayNames string[]
---@field public AbbreviatedMonthNames string[]
---@field public MonthNames string[]
---@field public IsReadOnly boolean
---@field public NativeCalendarName string
---@field public AbbreviatedMonthGenitiveNames string[]
---@field public MonthGenitiveNames string[]
local m = {}

---@static
---@param provider System.IFormatProvider
---@return System.Globalization.DateTimeFormatInfo
function m.GetInstance(provider) end

---@virtual
---@param formatType System.Type
---@return any
function m:GetFormat(formatType) end

---@virtual
---@return any
function m:Clone() end

---@param eraName string
---@return number
function m:GetEra(eraName) end

---@param era number
---@return string
function m:GetEraName(era) end

---@param era number
---@return string
function m:GetAbbreviatedEraName(era) end

---@param dayofweek System.DayOfWeek
---@return string
function m:GetAbbreviatedDayName(dayofweek) end

---@param dayOfWeek System.DayOfWeek
---@return string
function m:GetShortestDayName(dayOfWeek) end

---@overload fun(format:number):
---@return string[]
function m:GetAllDateTimePatterns() end

---@param dayofweek System.DayOfWeek
---@return string
function m:GetDayName(dayofweek) end

---@param month number
---@return string
function m:GetAbbreviatedMonthName(month) end

---@param month number
---@return string
function m:GetMonthName(month) end

---@static
---@param dtfi System.Globalization.DateTimeFormatInfo
---@return System.Globalization.DateTimeFormatInfo
function m.ReadOnly(dtfi) end

---@param patterns string[]
---@param format number
function m:SetAllDateTimePatterns(patterns, format) end

System.Globalization.DateTimeFormatInfo = m
return m
