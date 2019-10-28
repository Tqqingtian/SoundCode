---@class UnityEngine.iOS.OnDemandResources : System.Object
---@field public enabled boolean @static
local m = {}

---@static
---@param tags string[]
---@return UnityEngine.iOS.OnDemandResourcesRequest
function m.PreloadAsync(tags) end

UnityEngine.iOS.OnDemandResources = m
return m
