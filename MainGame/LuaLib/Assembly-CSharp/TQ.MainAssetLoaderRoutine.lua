---@class TQ.MainAssetLoaderRoutine : System.Object
local m = {}

---@param assetCategory AssetCategory
---@param assetFullName string
---@param onComplete fun(t1:TQ.ResourceEntity)
function m:load(assetCategory, assetFullName, onComplete) end

TQ.MainAssetLoaderRoutine = m
return m
