---@class System.Runtime.InteropServices.WindowsRuntime.WindowsRuntimeMarshal.NativeOrStaticEventRegistrationImpl.EventRegistrationTokenListWithCount : System.Object
local m = {}

---@param token System.Runtime.InteropServices.WindowsRuntime.EventRegistrationToken
function m:Push(token) end

---@return boolean, System.Runtime.InteropServices.WindowsRuntime.EventRegistrationToken
function m:Pop() end

---@param tokens System.Runtime.InteropServices.WindowsRuntime.EventRegistrationToken[]
function m:CopyTo(tokens) end

System.Runtime.InteropServices.WindowsRuntime.WindowsRuntimeMarshal.NativeOrStaticEventRegistrationImpl.EventRegistrationTokenListWithCount = m
return m
