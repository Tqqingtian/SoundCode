---@class Microsoft.Win32.Win32Native : System.Object
local m = {}

---@static
---@param hr number
---@return string
function m.GetMessage(hr) end

---@static
---@param errorCode number
---@return number
function m.MakeHRFromErrorCode(errorCode) end

Microsoft.Win32.Win32Native = m
return m
