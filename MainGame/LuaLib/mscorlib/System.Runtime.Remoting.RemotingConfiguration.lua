---@class System.Runtime.Remoting.RemotingConfiguration : System.Object
---@field public ApplicationId string @static
---@field public ApplicationName string @static
---@field public CustomErrorsMode System.Runtime.Remoting.CustomErrorsModes @static
---@field public ProcessId string @static
local m = {}

---@overload fun(filename:string) @static
---@static
---@param filename string
---@param ensureSecurity boolean
function m.Configure(filename, ensureSecurity) end

---@static
---@return System.Runtime.Remoting.ActivatedClientTypeEntry[]
function m.GetRegisteredActivatedClientTypes() end

---@static
---@return System.Runtime.Remoting.ActivatedServiceTypeEntry[]
function m.GetRegisteredActivatedServiceTypes() end

---@static
---@return System.Runtime.Remoting.WellKnownClientTypeEntry[]
function m.GetRegisteredWellKnownClientTypes() end

---@static
---@return System.Runtime.Remoting.WellKnownServiceTypeEntry[]
function m.GetRegisteredWellKnownServiceTypes() end

---@static
---@param svrType System.Type
---@return boolean
function m.IsActivationAllowed(svrType) end

---@overload fun(typeName:string, assemblyName:string): @static
---@static
---@param svrType System.Type
---@return System.Runtime.Remoting.ActivatedClientTypeEntry
function m.IsRemotelyActivatedClientType(svrType) end

---@overload fun(typeName:string, assemblyName:string): @static
---@static
---@param svrType System.Type
---@return System.Runtime.Remoting.WellKnownClientTypeEntry
function m.IsWellKnownClientType(svrType) end

---@overload fun(type:System.Type, appUrl:string) @static
---@static
---@param entry System.Runtime.Remoting.ActivatedClientTypeEntry
function m.RegisterActivatedClientType(entry) end

---@overload fun(type:System.Type) @static
---@static
---@param entry System.Runtime.Remoting.ActivatedServiceTypeEntry
function m.RegisterActivatedServiceType(entry) end

---@overload fun(entry:System.Runtime.Remoting.WellKnownClientTypeEntry) @static
---@static
---@param type System.Type
---@param objectUrl string
function m.RegisterWellKnownClientType(type, objectUrl) end

---@overload fun(entry:System.Runtime.Remoting.WellKnownServiceTypeEntry) @static
---@static
---@param type System.Type
---@param objectUri string
---@param mode System.Runtime.Remoting.WellKnownObjectMode
function m.RegisterWellKnownServiceType(type, objectUri, mode) end

---@static
---@param isLocalRequest boolean
---@return boolean
function m.CustomErrorsEnabled(isLocalRequest) end

System.Runtime.Remoting.RemotingConfiguration = m
return m
