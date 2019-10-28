---@class System.Console.WindowsConsole : System.Object
---@field public ctrlHandlerAdded boolean @static
local m = {}

---@static
---@return number
function m.GetInputCodePage() end

---@static
---@return number
function m.GetOutputCodePage() end

---@static
function m.AddCtrlHandler() end

---@static
function m.RemoveCtrlHandler() end

System.Console.WindowsConsole = m
return m
