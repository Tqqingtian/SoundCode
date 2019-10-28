---@class System.Runtime.InteropServices.WindowsRuntime.WindowsRuntimeMarshal.NativeOrStaticEventRegistrationImpl.EventCacheKeyEqualityComparer : System.Object
local m = {}

---@virtual
---@param lhs System.Runtime.InteropServices.WindowsRuntime.WindowsRuntimeMarshal.NativeOrStaticEventRegistrationImpl.EventCacheKey
---@param rhs System.Runtime.InteropServices.WindowsRuntime.WindowsRuntimeMarshal.NativeOrStaticEventRegistrationImpl.EventCacheKey
---@return boolean
function m:Equals(lhs, rhs) end

---@virtual
---@param key System.Runtime.InteropServices.WindowsRuntime.WindowsRuntimeMarshal.NativeOrStaticEventRegistrationImpl.EventCacheKey
---@return number
function m:GetHashCode(key) end

System.Runtime.InteropServices.WindowsRuntime.WindowsRuntimeMarshal.NativeOrStaticEventRegistrationImpl.EventCacheKeyEqualityComparer = m
return m
