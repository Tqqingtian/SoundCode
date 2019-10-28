---@class System.TimeZoneInfo.AdjustmentRule : System.Object
---@field public DateStart System.DateTime
---@field public DateEnd System.DateTime
---@field public DaylightDelta System.TimeSpan
---@field public DaylightTransitionStart System.TimeZoneInfo.TransitionTime
---@field public DaylightTransitionEnd System.TimeZoneInfo.TransitionTime
local m = {}

---@virtual
---@param other System.TimeZoneInfo.AdjustmentRule
---@return boolean
function m:Equals(other) end

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@param dateStart System.DateTime
---@param dateEnd System.DateTime
---@param daylightDelta System.TimeSpan
---@param daylightTransitionStart System.TimeZoneInfo.TransitionTime
---@param daylightTransitionEnd System.TimeZoneInfo.TransitionTime
---@return System.TimeZoneInfo.AdjustmentRule
function m.CreateAdjustmentRule(dateStart, dateEnd, daylightDelta, daylightTransitionStart, daylightTransitionEnd) end

System.TimeZoneInfo.AdjustmentRule = m
return m
