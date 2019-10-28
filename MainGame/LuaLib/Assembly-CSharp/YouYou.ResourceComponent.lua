---@class TQ.ResourceComponent : TQ.TQBaseComponent
---@field public LocalFilePath string
---@field public ResourceManager TQ.ResourceManager
---@field public ResourceLoaderManager TQ.ResourceLoaderManager
local m = {}

function m:InitStreamingAssetsBundleInfo() end

function m:InitAssetInfo() end

---@param path string
---@return string
function m:GetLastPathName(path) end

---@virtual
function m:Shutdown() end

---@virtual
function m:OnUpdate() end

---@param sceneName string
---@return string
function m:GetSceneAssetBundlePath(sceneName) end

TQ.ResourceComponent = m
return m
