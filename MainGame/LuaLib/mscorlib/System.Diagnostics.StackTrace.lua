---@class System.Diagnostics.StackTrace : System.Object
---@field public METHODS_TO_SKIP number @static
---@field public FrameCount number
local m = {}

---@virtual
---@param index number
---@return System.Diagnostics.StackFrame
function m:GetFrame(index) end

---@virtual
---@return System.Diagnostics.StackFrame[]
function m:GetFrames() end

---@virtual
---@return string
function m:ToString() end

System.Diagnostics.StackTrace = m
return m
