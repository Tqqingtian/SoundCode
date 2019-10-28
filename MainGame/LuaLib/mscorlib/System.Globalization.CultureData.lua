---@class System.Globalization.CultureData : System.Object
---@field public Invariant System.Globalization.CultureData @static
local m = {}

---@overload fun(cultureName:string, useUserOverride:boolean, datetimeIndex:number, calendarId:number, numberIndex:number, iso2lang:string, ansiCodePage:number, oemCodePage:number, macCodePage:number, ebcdicCodePage:number, rightToLeft:boolean, listSeparator:string): @static
---@static
---@param cultureName string
---@param useUserOverride boolean
---@return System.Globalization.CultureData
function m.GetCultureData(cultureName, useUserOverride) end

---@param calendarId number
---@return System.Globalization.CalendarData
function m:GetCalendar(calendarId) end

System.Globalization.CultureData = m
return m
