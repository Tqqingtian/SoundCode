---@class System.AppDomainSetup : System.Object
---@field public ApplicationBase string
---@field public ApplicationName string
---@field public CachePath string
---@field public ConfigurationFile string
---@field public DisallowPublisherPolicy boolean
---@field public DynamicBase string
---@field public LicenseFile string
---@field public LoaderOptimization System.LoaderOptimization
---@field public PrivateBinPath string
---@field public PrivateBinPathProbe string
---@field public ShadowCopyDirectories string
---@field public ShadowCopyFiles string
---@field public DisallowBindingRedirects boolean
---@field public DisallowCodeDownload boolean
---@field public TargetFrameworkName string
---@field public ActivationArguments System.Runtime.Hosting.ActivationArguments
---@field public AppDomainInitializer fun(args:string[])
---@field public AppDomainInitializerArguments string[]
---@field public ApplicationTrust System.Security.Policy.ApplicationTrust
---@field public DisallowApplicationBaseProbing boolean
---@field public AppDomainManagerAssembly string
---@field public AppDomainManagerType string
---@field public PartialTrustVisibleAssemblies string[]
---@field public SandboxInterop boolean
local m = {}

---@return string
function m:GetConfigurationBytes() end

---@param value string
function m:SetConfigurationBytes(value) end

---@param switches System.Collections.Generic.IEnumerable_1_System_String_
function m:SetCompatibilitySwitches(switches) end

---@param functionName string
---@param functionVersion number
---@param functionPointer System.IntPtr
function m:SetNativeFunction(functionName, functionVersion, functionPointer) end

System.AppDomainSetup = m
return m
