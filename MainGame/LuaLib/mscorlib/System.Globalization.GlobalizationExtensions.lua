---@class System.Globalization.GlobalizationExtensions : System.Object
local m = {}

---@static
---@param compareInfo System.Globalization.CompareInfo
---@param options System.Globalization.CompareOptions
---@return System.StringComparer
function m.GetStringComparer(compareInfo, options) end

System.Globalization.GlobalizationExtensions = m
return m
