---@class System.Security.Policy.MonoTrustManager : System.Object
local m = {}

---@virtual
---@param activationContext System.ActivationContext
---@param context System.Security.Policy.TrustManagerContext
---@return System.Security.Policy.ApplicationTrust
function m:DetermineApplicationTrust(activationContext, context) end

---@virtual
---@param e System.Security.SecurityElement
function m:FromXml(e) end

---@virtual
---@return System.Security.SecurityElement
function m:ToXml() end

System.Security.Policy.MonoTrustManager = m
return m
