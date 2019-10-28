---@class Unity.Burst.LowLevel.BurstCompilerService.ExtractCompilerFlags : System.MulticastDelegate
local m = {}

---@virtual
---@param jobType System.Type
---@return boolean, System.String
function m:Invoke(jobType) end

---@virtual
---@param jobType System.Type
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult, System.String
function m:BeginInvoke(jobType, callback, object) end

---@virtual
---@param result System.IAsyncResult
---@return boolean, System.String
function m:EndInvoke(result) end

Unity.Burst.LowLevel.BurstCompilerService.ExtractCompilerFlags = m
return m
