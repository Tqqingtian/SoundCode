---@class TQ.PoolManager : TQ.ManagerBase
---@field public ClassObjectPool TQ.ClassObjectPool
---@field public GameObjectPool TQ.GameObjectPool
---@field public AssetBundlePool TQ.ResoursePool
---@field public AssetPool table<AssetCategory, TQ.ResoursePool>
local m = {}

function m:ReleaseClassObjectPool() end

function m:ReleaseAssetBundlePool() end

function m:ReleaseAssetPool() end

---@virtual
function m:Dispose() end

TQ.PoolManager = m
return m
