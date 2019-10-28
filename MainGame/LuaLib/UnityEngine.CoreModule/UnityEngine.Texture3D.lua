---@class UnityEngine.Texture3D : UnityEngine.Texture
---@field public depth number
---@field public format UnityEngine.TextureFormat
---@field public isReadable boolean
local m = {}

---@overload fun():
---@param miplevel number
---@return UnityEngine.Color[]
function m:GetPixels(miplevel) end

---@overload fun():
---@param miplevel number
---@return UnityEngine.Color32[]
function m:GetPixels32(miplevel) end

---@overload fun(colors:UnityEngine.Color[])
---@param colors UnityEngine.Color[]
---@param miplevel number
function m:SetPixels(colors, miplevel) end

---@overload fun(colors:UnityEngine.Color32[])
---@param colors UnityEngine.Color32[]
---@param miplevel number
function m:SetPixels32(colors, miplevel) end

---@overload fun(updateMipmaps:boolean)
---@overload fun()
---@param updateMipmaps boolean
---@param makeNoLongerReadable boolean
function m:Apply(updateMipmaps, makeNoLongerReadable) end

UnityEngine.Texture3D = m
return m
