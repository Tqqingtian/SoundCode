---@class System.Security.Policy.ApplicationSecurityManager : System.Object
---@field public ApplicationTrustManager System.Security.Policy.IApplicationTrustManager @static
---@field public UserApplicationTrusts System.Security.Policy.ApplicationTrustCollection @static
local m = {}

---@static
---@param activationContext System.ActivationContext
---@param context System.Security.Policy.TrustManagerContext
---@return boolean
function m.DetermineApplicationTrust(activationContext, context) end

System.Security.Policy.ApplicationSecurityManager = m
return m
