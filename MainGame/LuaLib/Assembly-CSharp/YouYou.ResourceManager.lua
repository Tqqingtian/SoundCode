---@class TQ.ResourceManager : TQ.ManagerBase
---@field public StreamingAssetsManager TQ.StreamingAssetsManager
---@field public LocalAssetsManager TQ.LocalAssetsManager
---@field public CDNVersion string
local m = {}

---@static
---@param buffer string
---@param version System.String
---@return System.Collections.Generic.Dictionary_2_System_String_TQ_AssetBundleInfoEntity_, System.String
function m.GetAssetBundleVersionList(buffer, version) end

function m:InitStreamingAssetsBundleInfo() end

---@param entity TQ.AssetBundleInfoEntity
function m:SaveVersion(entity) end

function m:SetResourseVersion() end

---@param assetbundlePath string
---@return TQ.AssetBundleInfoEntity
function m:GetAssetBundleInfo(assetbundlePath) end

---@virtual
function m:Dispose() end

TQ.ResourceManager = m
return m
