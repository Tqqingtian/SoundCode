---@class TQ.AssetBundleLoaderRoutine : System.Object
---@field public OnAssetBundleCreateUpate fun(obj:number)
---@field public OnLoadAssetBundleComplete fun(obj:UnityEngine.AssetBundle)
local m = {}

---@param assetbundlePath string
function m:LoadAssetBundle(assetbundlePath) end

function m:Reset() end

function m:OnUpdate() end

TQ.AssetBundleLoaderRoutine = m
return m
