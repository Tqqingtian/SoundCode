---@class UnityEngine.Cubemap : UnityEngine.Texture
---@field public mipmapCount number
---@field public format UnityEngine.TextureFormat
---@field public isReadable boolean
local m = {}

---@overload fun()
---@param smoothRegionWidthInPixels number
function m:SmoothEdges(smoothRegionWidthInPixels) end

---@overload fun(face:UnityEngine.CubemapFace):
---@param face UnityEngine.CubemapFace
---@param miplevel number
---@return UnityEngine.Color[]
function m:GetPixels(face, miplevel) end

---@overload fun(colors:UnityEngine.Color[], face:UnityEngine.CubemapFace)
---@param colors UnityEngine.Color[]
---@param face UnityEngine.CubemapFace
---@param miplevel number
function m:SetPixels(colors, face, miplevel) end

---@static
---@param width number
---@param format UnityEngine.TextureFormat
---@param mipmap boolean
---@param nativeTex System.IntPtr
---@return UnityEngine.Cubemap
function m.CreateExternalTexture(width, format, mipmap, nativeTex) end

---@param face UnityEngine.CubemapFace
---@param x number
---@param y number
---@param color UnityEngine.Color
function m:SetPixel(face, x, y, color) end

---@param face UnityEngine.CubemapFace
---@param x number
---@param y number
---@return UnityEngine.Color
function m:GetPixel(face, x, y) end

---@overload fun(updateMipmaps:boolean)
---@overload fun()
---@param updateMipmaps boolean
---@param makeNoLongerReadable boolean
function m:Apply(updateMipmaps, makeNoLongerReadable) end

UnityEngine.Cubemap = m
return m
