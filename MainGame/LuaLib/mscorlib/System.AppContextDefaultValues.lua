---@class System.AppContextDefaultValues : System.Object
local m = {}

---@static
function m.PopulateDefaultValues() end

---@static
---@param switchName string
---@return boolean, System.Boolean
function m.TryGetSwitchOverride(switchName) end

System.AppContextDefaultValues = m
return m
