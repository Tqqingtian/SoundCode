---@class System.Security.Policy.IApplicationTrustManager : table
local m = {}

---@abstract
---@param activationContext System.ActivationContext
---@param context System.Security.Policy.TrustManagerContext
---@return System.Security.Policy.ApplicationTrust
function m:DetermineApplicationTrust(activationContext, context) end

System.Security.Policy.IApplicationTrustManager = m
return m
