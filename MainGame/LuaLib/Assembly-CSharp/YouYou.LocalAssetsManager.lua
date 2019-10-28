---@class TQ.LocalAssetsManager : System.Object
---@field public LocalVersionFilePath string
local m = {}

---@return boolean
function m:GetVersionFileExists() end

---@param path string
---@return string
function m:GetFileBuffer(path) end

---@param assetbundlePath string
---@return boolean
function m:CheckeFileExists(assetbundlePath) end

---@overload fun(key:string):
---@param key string
---@param ... any|any[]
---@return string
function m:GetString(key, ...) end

---@param version string
function m:SetResourceVersion(version) end

---@param dic System.Collections.Generic.Dictionary_2_System_String_TQ_AssetBundleInfoEntity_
function m:SaveVersionFile(dic) end

---@param version System.String
---@return System.Collections.Generic.Dictionary_2_System_String_TQ_AssetBundleInfoEntity_, System.String
function m:GetAssetBundleVersionList(version) end

TQ.LocalAssetsManager = m
return m
