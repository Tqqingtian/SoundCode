---@class System.Deployment.Internal.InternalActivationContextHelper : System.Object
local m = {}

---@static
---@param appInfo System.ActivationContext
---@return any
function m.GetActivationContextData(appInfo) end

---@static
---@param appInfo System.ActivationContext
---@return any
function m.GetApplicationComponentManifest(appInfo) end

---@static
---@param appInfo System.ActivationContext
---@return string
function m.GetApplicationManifestBytes(appInfo) end

---@static
---@param appInfo System.ActivationContext
---@return any
function m.GetDeploymentComponentManifest(appInfo) end

---@static
---@param appInfo System.ActivationContext
---@return string
function m.GetDeploymentManifestBytes(appInfo) end

---@static
---@param appInfo System.ActivationContext
---@return boolean
function m.IsFirstRun(appInfo) end

---@static
---@param appInfo System.ActivationContext
function m.PrepareForExecution(appInfo) end

System.Deployment.Internal.InternalActivationContextHelper = m
return m
