---@class System.Runtime.InteropServices.WindowsRuntime.IRestrictedErrorInfo : table
local m = {}

---@abstract
---@return System.String, System.Int32, System.String, System.String
function m:GetErrorDetails() end

---@abstract
---@return System.String
function m:GetReference() end

System.Runtime.InteropServices.WindowsRuntime.IRestrictedErrorInfo = m
return m
