---@class UnityEngine.CubemapArray : UnityEngine.Texture
---@field public cubemapCount number
---@field public format UnityEngine.TextureFormat
---@field public isReadable boolean
local m = {}

---@overload fun(face:UnityEngine.CubemapFace, arrayElement:number):
---@param face UnityEngine.CubemapFace
---@param arrayElement number
---@param miplevel number
---@return UnityEngine.Color[]
function m:GetPixels(face, arrayElement, miplevel) end

---@overload fun(face:UnityEngine.CubemapFace, arrayElement:number):
---@param face UnityEngine.CubemapFace
---@param arrayElement number
---@param miplevel number
---@return UnityEngine.Color32[]
function m:GetPixels32(face, arrayElement, miplevel) end

---@overload fun(colors:UnityEngine.Color[], face:UnityEngine.CubemapFace, arrayElement:number)
---@param colors UnityEngine.Color[]
---@param face UnityEngine.CubemapFace
---@param arrayElement number
---@param miplevel number
function m:SetPixels(colors, face, arrayElement, miplevel) end

---@overload fun(colors:UnityEngine.Color32[], face:UnityEngine.CubemapFace, arrayElement:number)
---@param colors UnityEngine.Color32[]
---@param face UnityEngine.CubemapFace
---@param arrayElement number
---@param miplevel number
function m:SetPixels32(colors, face, arrayElement, miplevel) end

---@overload fun(updateMipmaps:boolean)
---@overload fun()
---@param updateMipmaps boolean
---@param makeNoLongerReadable boolean
function m:Apply(updateMipmaps, makeNoLongerReadable) end

UnityEngine.CubemapArray = m
return m
