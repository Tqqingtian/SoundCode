---@class System.AppContext : System.Object
---@field public BaseDirectory string @static
---@field public TargetFrameworkName string @static
local m = {}

---@static
---@param name string
---@return any
function m.GetData(name) end

---@static
---@param switchName string
---@return boolean, System.Boolean
function m.TryGetSwitch(switchName) end

---@static
---@param switchName string
---@param isEnabled boolean
function m.SetSwitch(switchName, isEnabled) end

System.AppContext = m
return m
