---@class System.ActivationContext : System.Object
---@field public Form System.ActivationContext.ContextForm
---@field public Identity System.ApplicationIdentity
---@field public ApplicationManifestBytes string
---@field public DeploymentManifestBytes string
local m = {}

---@overload fun(identity:System.ApplicationIdentity, manifestPaths:string[]): @static
---@static
---@param identity System.ApplicationIdentity
---@return System.ActivationContext
function m.CreatePartialActivationContext(identity) end

---@virtual
function m:Dispose() end

System.ActivationContext = m
return m
