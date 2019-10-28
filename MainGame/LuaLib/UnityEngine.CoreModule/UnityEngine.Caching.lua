---@class UnityEngine.Caching : System.Object
---@field public compressionEnabled boolean @static
---@field public ready boolean @static
---@field public spaceUsed number @static
---@field public spaceOccupied number @static
---@field public spaceAvailable number @static
---@field public spaceFree number @static
---@field public maximumAvailableDiskSpace number @static
---@field public expirationDelay number @static
---@field public cacheCount number @static
---@field public defaultCache UnityEngine.Cache @static
---@field public currentCacheForWriting UnityEngine.Cache @static
local m = {}

---@overload fun(expiration:number): @static
---@static
---@return boolean
function m.ClearCache() end

---@static
---@param assetBundleName string
---@param hash UnityEngine.Hash128
---@return boolean
function m.ClearCachedVersion(assetBundleName, hash) end

---@static
---@param assetBundleName string
---@param hash UnityEngine.Hash128
---@return boolean
function m.ClearOtherCachedVersions(assetBundleName, hash) end

---@static
---@param assetBundleName string
---@return boolean
function m.ClearAllCachedVersions(assetBundleName) end

---@static
---@param assetBundleName string
---@param outCachedVersions UnityEngine.Hash128[]
function m.GetCachedVersions(assetBundleName, outCachedVersions) end

---@overload fun(url:string, hash:UnityEngine.Hash128): @static
---@overload fun(cachedBundle:UnityEngine.CachedAssetBundle): @static
---@static
---@param url string
---@param version number
---@return boolean
function m.IsVersionCached(url, version) end

---@overload fun(url:string, hash:UnityEngine.Hash128): @static
---@overload fun(cachedBundle:UnityEngine.CachedAssetBundle): @static
---@static
---@param url string
---@param version number
---@return boolean
function m.MarkAsUsed(url, version) end

---@overload fun(url:string, hash:UnityEngine.Hash128) @static
---@overload fun(cachedBundle:UnityEngine.CachedAssetBundle) @static
---@static
---@param url string
---@param version number
function m.SetNoBackupFlag(url, version) end

---@overload fun(url:string, hash:UnityEngine.Hash128) @static
---@overload fun(cachedBundle:UnityEngine.CachedAssetBundle) @static
---@static
---@param url string
---@param version number
function m.ResetNoBackupFlag(url, version) end

---@static
---@param url string
---@return number
function m.GetVersionFromCache(url) end

---@static
---@param cachePath string
---@return UnityEngine.Cache
function m.AddCache(cachePath) end

---@static
---@param cacheIndex number
---@return UnityEngine.Cache
function m.GetCacheAt(cacheIndex) end

---@static
---@param cachePath string
---@return UnityEngine.Cache
function m.GetCacheByPath(cachePath) end

---@static
---@param cachePaths string[]
function m.GetAllCachePaths(cachePaths) end

---@static
---@param cache UnityEngine.Cache
---@return boolean
function m.RemoveCache(cache) end

---@static
---@param src UnityEngine.Cache
---@param dst UnityEngine.Cache
function m.MoveCacheBefore(src, dst) end

---@static
---@param src UnityEngine.Cache
---@param dst UnityEngine.Cache
function m.MoveCacheAfter(src, dst) end

---@static
---@return boolean
function m.CleanCache() end

UnityEngine.Caching = m
return m
