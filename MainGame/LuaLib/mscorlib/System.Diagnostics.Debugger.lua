---@class System.Diagnostics.Debugger : System.Object
---@field public DefaultCategory string @static
---@field public IsAttached boolean @static
local m = {}

---@static
function m.Break() end

---@static
---@return boolean
function m.IsLogging() end

---@static
---@return boolean
function m.Launch() end

---@static
---@param level number
---@param category string
---@param message string
function m.Log(level, category, message) end

---@static
function m.NotifyOfCrossThreadDependency() end

System.Diagnostics.Debugger = m
return m
