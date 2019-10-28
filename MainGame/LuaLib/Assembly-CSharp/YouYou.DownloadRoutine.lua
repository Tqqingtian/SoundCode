---@class TQ.DownloadRoutine : System.Object
local m = {}

---@overload fun(url:string, assetBundleInfo:TQ.AssetBundleInfoEntity, onUpadte:fun(t1:string, t2:number, t3:number))
---@overload fun(url:string, assetBundleInfo:TQ.AssetBundleInfoEntity)
---@param url string
---@param assetBundleInfo TQ.AssetBundleInfoEntity
---@param onUpadte fun(t1:string, t2:number, t3:number)
---@param onComplete fun(t1:string, t2:TQ.DownloadRoutine)
function m:BeginDownload(url, assetBundleInfo, onUpadte, onComplete) end

function m:Reset() end

function m:OnUpdate() end

TQ.DownloadRoutine = m
return m
