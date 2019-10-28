---@class System.TimeZoneInfo.TransitionTime : System.ValueType
---@field public TimeOfDay System.DateTime
---@field public Month number
---@field public Week number
---@field public Day number
---@field public DayOfWeek System.DayOfWeek
---@field public IsFixedDateRule boolean
local m = {}

---@overload fun(other:System.TimeZoneInfo.TransitionTime): @virtual
---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@static
---@param t1 System.TimeZoneInfo.TransitionTime
---@param t2 System.TimeZoneInfo.TransitionTime
---@return boolean
function m.op_Equality(t1, t2) end

---@static
---@param t1 System.TimeZoneInfo.TransitionTime
---@param t2 System.TimeZoneInfo.TransitionTime
---@return boolean
function m.op_Inequality(t1, t2) end

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@param timeOfDay System.DateTime
---@param month number
---@param day number
---@return System.TimeZoneInfo.TransitionTime
function m.CreateFixedDateRule(timeOfDay, month, day) end

---@static
---@param timeOfDay System.DateTime
---@param month number
---@param week number
---@param dayOfWeek System.DayOfWeek
---@return System.TimeZoneInfo.TransitionTime
function m.CreateFloatingDateRule(timeOfDay, month, week, dayOfWeek) end

System.TimeZoneInfo.TransitionTime = m
return m
