---@class System.Globalization.CalendricalCalculationsHelper : System.Object
local m = {}

---@static
---@param degrees number
---@param minutes number
---@param seconds number
---@return number
function m.Angle(degrees, minutes, seconds) end

---@static
---@param longitude number
---@return number
function m.AsDayFraction(longitude) end

---@static
---@param moment number
---@return number
function m.JulianCenturies(moment) end

---@static
---@param date number
---@param longitude number
---@return number
function m.Midday(date, longitude) end

---@static
---@param date number
---@return number
function m.MiddayAtPersianObservationSite(date) end

---@static
---@param time number
---@return number
function m.Compute(time) end

---@static
---@param longitude number
---@return number
function m.AsSeason(longitude) end

System.Globalization.CalendricalCalculationsHelper = m
return m
