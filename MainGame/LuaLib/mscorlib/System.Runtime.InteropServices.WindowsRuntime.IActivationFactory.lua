---@class System.Runtime.InteropServices.WindowsRuntime.IActivationFactory : table
local m = {}

---@abstract
---@return any
function m:ActivateInstance() end

System.Runtime.InteropServices.WindowsRuntime.IActivationFactory = m
return m
