---@class System.Globalization.TaiwanLunisolarCalendar : System.Globalization.EastAsianLunisolarCalendar
---@field public MinSupportedDateTime System.DateTime
---@field public MaxSupportedDateTime System.DateTime
---@field public Eras number[]
local m = {}

---@virtual
---@param time System.DateTime
---@return number
function m:GetEra(time) end

System.Globalization.TaiwanLunisolarCalendar = m
return m
