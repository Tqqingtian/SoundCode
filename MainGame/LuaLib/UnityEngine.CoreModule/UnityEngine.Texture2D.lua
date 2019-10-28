---@class UnityEngine.Texture2D : UnityEngine.Texture
---@field public whiteTexture UnityEngine.Texture2D @static
---@field public blackTexture UnityEngine.Texture2D @static
---@field public mipmapCount number
---@field public format UnityEngine.TextureFormat
---@field public isReadable boolean
---@field public streamingMipmaps boolean
---@field public streamingMipmapsPriority number
---@field public requestedMipmapLevel number
---@field public desiredMipmapLevel number
---@field public loadingMipmapLevel number
---@field public loadedMipmapLevel number
---@field public alphaIsTransparency boolean
local m = {}

---@param highQuality boolean
function m:Compress(highQuality) end

function m:ClearRequestedMipmapLevel() end

---@return boolean
function m:IsRequestedMipmapLevelLoaded() end

---@param nativeTex System.IntPtr
function m:UpdateExternalTexture(nativeTex) end

---@overload fun():
---@return string
function m:GetRawTextureData() end

---@overload fun(x:number, y:number, blockWidth:number, blockHeight:number):
---@overload fun(miplevel:number):
---@overload fun():
---@param x number
---@param y number
---@param blockWidth number
---@param blockHeight number
---@param miplevel number
---@return UnityEngine.Color[]
function m:GetPixels(x, y, blockWidth, blockHeight, miplevel) end

---@overload fun():
---@param miplevel number
---@return UnityEngine.Color32[]
function m:GetPixels32(miplevel) end

---@overload fun(textures:UnityEngine.Texture2D[], padding:number, maximumAtlasSize:number):
---@overload fun(textures:UnityEngine.Texture2D[], padding:number):
---@param textures UnityEngine.Texture2D[]
---@param padding number
---@param maximumAtlasSize number
---@param makeNoLongerReadable boolean
---@return UnityEngine.Rect[]
function m:PackTextures(textures, padding, maximumAtlasSize, makeNoLongerReadable) end

---@static
---@param width number
---@param height number
---@param format UnityEngine.TextureFormat
---@param mipChain boolean
---@param linear boolean
---@param nativeTex System.IntPtr
---@return UnityEngine.Texture2D
function m.CreateExternalTexture(width, height, format, mipChain, linear, nativeTex) end

---@param x number
---@param y number
---@param color UnityEngine.Color
function m:SetPixel(x, y, color) end

---@overload fun(x:number, y:number, blockWidth:number, blockHeight:number, colors:UnityEngine.Color[])
---@overload fun(colors:UnityEngine.Color[], miplevel:number)
---@overload fun(colors:UnityEngine.Color[])
---@param x number
---@param y number
---@param blockWidth number
---@param blockHeight number
---@param colors UnityEngine.Color[]
---@param miplevel number
function m:SetPixels(x, y, blockWidth, blockHeight, colors, miplevel) end

---@param x number
---@param y number
---@return UnityEngine.Color
function m:GetPixel(x, y) end

---@param x number
---@param y number
---@return UnityEngine.Color
function m:GetPixelBilinear(x, y) end

---@overload fun(data:string)
---@overload fun(data:System.ValueType)
---@param data System.IntPtr
---@param size number
function m:LoadRawTextureData(data, size) end

---@overload fun(updateMipmaps:boolean)
---@overload fun()
---@param updateMipmaps boolean
---@param makeNoLongerReadable boolean
function m:Apply(updateMipmaps, makeNoLongerReadable) end

---@overload fun(width:number, height:number, format:UnityEngine.TextureFormat, hasMipMap:boolean):
---@param width number
---@param height number
---@return boolean
function m:Resize(width, height) end

---@overload fun(source:UnityEngine.Rect, destX:number, destY:number)
---@param source UnityEngine.Rect
---@param destX number
---@param destY number
---@param recalculateMipMaps boolean
function m:ReadPixels(source, destX, destY, recalculateMipMaps) end

---@static
---@param sizes UnityEngine.Vector2[]
---@param padding number
---@param atlasSize number
---@param results UnityEngine.Rect[]
---@return boolean
function m.GenerateAtlas(sizes, padding, atlasSize, results) end

---@overload fun(colors:UnityEngine.Color32[])
---@overload fun(x:number, y:number, blockWidth:number, blockHeight:number, colors:UnityEngine.Color32[], miplevel:number)
---@overload fun(x:number, y:number, blockWidth:number, blockHeight:number, colors:UnityEngine.Color32[])
---@param colors UnityEngine.Color32[]
---@param miplevel number
function m:SetPixels32(colors, miplevel) end

UnityEngine.Texture2D = m
return m
