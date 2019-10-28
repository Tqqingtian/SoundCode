---@class System.Globalization.ChineseLunisolarCalendar : System.Globalization.EastAsianLunisolarCalendar
---@field public ChineseEra number @static
---@field public MinSupportedDateTime System.DateTime
---@field public MaxSupportedDateTime System.DateTime
---@field public Eras number[]
local m = {}

---@virtual
---@param time System.DateTime
---@return number
function m:GetEra(time) end

System.Globalization.ChineseLunisolarCalendar = m
return m
