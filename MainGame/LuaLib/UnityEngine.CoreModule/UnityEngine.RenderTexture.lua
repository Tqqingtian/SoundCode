---@class UnityEngine.RenderTexture : UnityEngine.Texture
---@field public active UnityEngine.RenderTexture @static
---@field public enabled boolean @static
---@field public width number
---@field public height number
---@field public dimension UnityEngine.Rendering.TextureDimension
---@field public useMipMap boolean
---@field public sRGB boolean
---@field public format UnityEngine.RenderTextureFormat
---@field public vrUsage UnityEngine.VRTextureUsage
---@field public memorylessMode UnityEngine.RenderTextureMemoryless
---@field public autoGenerateMips boolean
---@field public volumeDepth number
---@field public antiAliasing number
---@field public bindTextureMS boolean
---@field public enableRandomWrite boolean
---@field public useDynamicScale boolean
---@field public isPowerOfTwo boolean
---@field public colorBuffer UnityEngine.RenderBuffer
---@field public depthBuffer UnityEngine.RenderBuffer
---@field public depth number
---@field public descriptor UnityEngine.RenderTextureDescriptor
---@field public generateMips boolean
---@field public isCubemap boolean
---@field public isVolume boolean
local m = {}

---@return System.IntPtr
function m:GetNativeDepthBufferPtr() end

---@overload fun()
---@param discardColor boolean
---@param discardDepth boolean
function m:DiscardContents(discardColor, discardDepth) end

function m:MarkRestoreExpected() end

---@overload fun(target:UnityEngine.RenderTexture)
function m:ResolveAntiAliasedSurface() end

---@param propertyName string
function m:SetGlobalShaderProperty(propertyName) end

---@return boolean
function m:Create() end

function m:Release() end

---@return boolean
function m:IsCreated() end

function m:GenerateMips() end

---@overload fun(equirect:UnityEngine.RenderTexture)
---@param equirect UnityEngine.RenderTexture
---@param eye UnityEngine.Camera.MonoOrStereoscopicEye
function m:ConvertToEquirect(equirect, eye) end

---@static
---@param rt UnityEngine.RenderTexture
---@return boolean
function m.SupportsStencil(rt) end

---@static
---@param temp UnityEngine.RenderTexture
function m.ReleaseTemporary(temp) end

---@overload fun(width:number, height:number, depthBuffer:number, format:UnityEngine.RenderTextureFormat, readWrite:UnityEngine.RenderTextureReadWrite, antiAliasing:number, memorylessMode:UnityEngine.RenderTextureMemoryless, vrUsage:UnityEngine.VRTextureUsage, useDynamicScale:boolean): @static
---@overload fun(width:number, height:number, depthBuffer:number, format:UnityEngine.RenderTextureFormat, readWrite:UnityEngine.RenderTextureReadWrite, antiAliasing:number, memorylessMode:UnityEngine.RenderTextureMemoryless, vrUsage:UnityEngine.VRTextureUsage): @static
---@overload fun(width:number, height:number, depthBuffer:number, format:UnityEngine.RenderTextureFormat, readWrite:UnityEngine.RenderTextureReadWrite, antiAliasing:number, memorylessMode:UnityEngine.RenderTextureMemoryless): @static
---@overload fun(width:number, height:number, depthBuffer:number, format:UnityEngine.RenderTextureFormat, readWrite:UnityEngine.RenderTextureReadWrite, antiAliasing:number): @static
---@overload fun(width:number, height:number, depthBuffer:number, format:UnityEngine.RenderTextureFormat, readWrite:UnityEngine.RenderTextureReadWrite): @static
---@overload fun(width:number, height:number, depthBuffer:number, format:UnityEngine.RenderTextureFormat): @static
---@overload fun(width:number, height:number, depthBuffer:number): @static
---@overload fun(width:number, height:number): @static
---@static
---@param desc UnityEngine.RenderTextureDescriptor
---@return UnityEngine.RenderTexture
function m.GetTemporary(desc) end

---@param color UnityEngine.Color
function m:SetBorderColor(color) end

---@return UnityEngine.Vector2
function m:GetTexelOffset() end

UnityEngine.RenderTexture = m
return m
