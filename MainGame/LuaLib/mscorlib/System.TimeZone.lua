---@class System.TimeZone : System.Object
---@field public CurrentTimeZone System.TimeZone @static
---@field public DaylightName string
---@field public StandardName string
local m = {}

---@abstract
---@param year number
---@return System.Globalization.DaylightTime
function m:GetDaylightChanges(year) end

---@abstract
---@param time System.DateTime
---@return System.TimeSpan
function m:GetUtcOffset(time) end

---@overload fun(time:System.DateTime, daylightTimes:System.Globalization.DaylightTime): @static
---@virtual
---@param time System.DateTime
---@return boolean
function m:IsDaylightSavingTime(time) end

---@virtual
---@param time System.DateTime
---@return System.DateTime
function m:ToLocalTime(time) end

---@virtual
---@param time System.DateTime
---@return System.DateTime
function m:ToUniversalTime(time) end

System.TimeZone = m
return m
