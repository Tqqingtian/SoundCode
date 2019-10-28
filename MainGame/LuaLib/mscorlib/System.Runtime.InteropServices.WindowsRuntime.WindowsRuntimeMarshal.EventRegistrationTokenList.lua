---@class System.Runtime.InteropServices.WindowsRuntime.WindowsRuntimeMarshal.EventRegistrationTokenList : System.ValueType
local m = {}

---@param token System.Runtime.InteropServices.WindowsRuntime.EventRegistrationToken
---@return boolean
function m:Push(token) end

---@return boolean, System.Runtime.InteropServices.WindowsRuntime.EventRegistrationToken
function m:Pop() end

---@param tokens System.Runtime.InteropServices.WindowsRuntime.EventRegistrationToken[]
function m:CopyTo(tokens) end

System.Runtime.InteropServices.WindowsRuntime.WindowsRuntimeMarshal.EventRegistrationTokenList = m
return m
