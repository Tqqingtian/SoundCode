---@class UnityEngine.Security : System.Object
local m = {}

---@overload fun(assemblyData:string): @static
---@static
---@param assemblyData string
---@param authorizationKey string
---@return System.Reflection.Assembly
function m.LoadAndVerifyAssembly(assemblyData, authorizationKey) end

---@overload fun(ip:string, atPort:number, timeout:number): @static
---@static
---@param ip string
---@param atPort number
---@return boolean
function m.PrefetchSocketPolicy(ip, atPort) end

UnityEngine.Security = m
return m
