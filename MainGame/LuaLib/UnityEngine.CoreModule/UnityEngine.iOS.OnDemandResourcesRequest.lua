---@class UnityEngine.iOS.OnDemandResourcesRequest : UnityEngine.AsyncOperation
---@field public error string
---@field public loadingPriority number
local m = {}

---@param resourceName string
---@return string
function m:GetResourcePath(resourceName) end

---@virtual
function m:Dispose() end

UnityEngine.iOS.OnDemandResourcesRequest = m
return m
