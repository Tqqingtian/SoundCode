---@class System.CurrentSystemTimeZone : System.TimeZone
---@field public DaylightName string
---@field public StandardName string
local m = {}

---@virtual
---@param year number
---@return System.Globalization.DaylightTime
function m:GetDaylightChanges(year) end

---@virtual
---@param dateTime System.DateTime
---@return System.TimeSpan
function m:GetUtcOffset(dateTime) end

---@virtual
---@param dateTime System.DateTime
---@return boolean
function m:IsDaylightSavingTime(dateTime) end

---@static
---@param year number
---@return boolean, System.Int64__, System.String__, System.Boolean
function m.GetTimeZoneData(year) end

System.CurrentSystemTimeZone = m
return m
