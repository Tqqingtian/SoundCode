---@class System.Diagnostics.StackFrame : System.Object
---@field public OFFSET_UNKNOWN number @static
local m = {}

---@virtual
---@return number
function m:GetFileLineNumber() end

---@virtual
---@return number
function m:GetFileColumnNumber() end

---@virtual
---@return string
function m:GetFileName() end

---@virtual
---@return number
function m:GetILOffset() end

---@virtual
---@return System.Reflection.MethodBase
function m:GetMethod() end

---@virtual
---@return number
function m:GetNativeOffset() end

---@virtual
---@return string
function m:ToString() end

System.Diagnostics.StackFrame = m
return m
