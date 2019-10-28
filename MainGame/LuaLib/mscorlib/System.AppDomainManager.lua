---@class System.AppDomainManager : System.MarshalByRefObject
---@field public ApplicationActivator System.Runtime.Hosting.ApplicationActivator
---@field public EntryAssembly System.Reflection.Assembly
---@field public HostExecutionContextManager System.Threading.HostExecutionContextManager
---@field public HostSecurityManager System.Security.HostSecurityManager
---@field public InitializationFlags System.AppDomainManagerInitializationOptions
local m = {}

---@virtual
---@param friendlyName string
---@param securityInfo System.Security.Policy.Evidence
---@param appDomainInfo System.AppDomainSetup
---@return System.AppDomain
function m:CreateDomain(friendlyName, securityInfo, appDomainInfo) end

---@virtual
---@param appDomainInfo System.AppDomainSetup
function m:InitializeNewDomain(appDomainInfo) end

---@virtual
---@param state System.Security.SecurityState
---@return boolean
function m:CheckSecuritySettings(state) end

System.AppDomainManager = m
return m
