---@class System.TimeZoneInfo.StringSerializer : System.Object
local m = {}

---@static
---@param zone System.TimeZoneInfo
---@return string
function m.GetSerializedString(zone) end

---@static
---@param source string
---@return System.TimeZoneInfo
function m.GetDeserializedTimeZoneInfo(source) end

System.TimeZoneInfo.StringSerializer = m
return m
