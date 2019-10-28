---@class System.Runtime.Versioning.CompatibilitySwitch : System.Object
local m = {}

---@static
---@param compatibilitySwitchName string
---@return boolean
function m.IsEnabled(compatibilitySwitchName) end

---@static
---@param compatibilitySwitchName string
---@return string
function m.GetValue(compatibilitySwitchName) end

System.Runtime.Versioning.CompatibilitySwitch = m
return m
