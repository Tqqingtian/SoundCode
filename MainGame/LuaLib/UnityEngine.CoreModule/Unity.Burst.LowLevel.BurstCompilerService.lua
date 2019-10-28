---@class Unity.Burst.LowLevel.BurstCompilerService : System.Object
---@field public IsInitialized boolean @static
local m = {}

---@static
---@param m System.Reflection.MethodInfo
---@param compilerOptions string
---@return string
function m.GetDisassembly(m, compilerOptions) end

---@static
---@param delegateMethod any
---@param compilerOptions string
---@return number
function m.CompileAsyncDelegateMethod(delegateMethod, compilerOptions) end

---@static
---@param userID number
---@return System.Void*
function m.GetAsyncCompiledAsyncDelegateMethod(userID) end

---@static
---@param method System.Reflection.MethodInfo
---@return string
function m.GetMethodSignature(method) end

---@static
---@param folderRuntime string
---@param extractCompilerFlags fun(jobType:System.Type):(, System.String)
function m.Initialize(folderRuntime, extractCompilerFlags) end

Unity.Burst.LowLevel.BurstCompilerService = m
return m
