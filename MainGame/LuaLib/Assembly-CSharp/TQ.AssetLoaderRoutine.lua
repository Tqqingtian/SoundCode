---@class TQ.AssetLoaderRoutine : System.Object
---@field public OnAssetUpdate fun(obj:number)
---@field public OnLoadAssetComplete fun(obj:UnityEngine.Object)
local m = {}

---@param assetName string
---@param assetBundle UnityEngine.AssetBundle
function m:LoadAsset(assetName, assetBundle) end

function m:Reset() end

function m:OnUpdate() end

TQ.AssetLoaderRoutine = m
return m
