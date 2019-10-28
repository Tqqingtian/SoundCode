---@class UnityEngine.Texture : UnityEngine.Object
---@field public masterTextureLimit number @static
---@field public anisotropicFiltering UnityEngine.AnisotropicFiltering @static
---@field public totalTextureMemory number @static
---@field public desiredTextureMemory number @static
---@field public targetTextureMemory number @static
---@field public currentTextureMemory number @static
---@field public nonStreamingTextureMemory number @static
---@field public streamingMipmapUploadCount number @static
---@field public streamingRendererCount number @static
---@field public streamingTextureCount number @static
---@field public nonStreamingTextureCount number @static
---@field public streamingTexturePendingLoadCount number @static
---@field public streamingTextureLoadingCount number @static
---@field public streamingTextureForceLoadAll boolean @static
---@field public streamingTextureDiscardUnusedMips boolean @static
---@field public width number
---@field public height number
---@field public dimension UnityEngine.Rendering.TextureDimension
---@field public isReadable boolean
---@field public wrapMode UnityEngine.TextureWrapMode
---@field public wrapModeU UnityEngine.TextureWrapMode
---@field public wrapModeV UnityEngine.TextureWrapMode
---@field public wrapModeW UnityEngine.TextureWrapMode
---@field public filterMode UnityEngine.FilterMode
---@field public anisoLevel number
---@field public mipMapBias number
---@field public texelSize UnityEngine.Vector2
---@field public updateCount number
---@field public imageContentsHash UnityEngine.Hash128
local m = {}

---@static
---@param forcedMin number
---@param globalMax number
function m.SetGlobalAnisotropicFilteringLimits(forcedMin, globalMax) end

---@return System.IntPtr
function m:GetNativeTexturePtr() end

---@return number
function m:GetNativeTextureID() end

function m:IncrementUpdateCount() end

---@static
function m.SetStreamingTextureMaterialDebugProperties() end

UnityEngine.Texture = m
return m
