---@class UnityEngine.Texture2DArray : UnityEngine.Texture
---@field public depth number
---@field public format UnityEngine.TextureFormat
---@field public isReadable boolean
local m = {}

---@overload fun(arrayElement:number):
---@param arrayElement number
---@param miplevel number
---@return UnityEngine.Color[]
function m:GetPixels(arrayElement, miplevel) end

---@overload fun(arrayElement:number):
---@param arrayElement number
---@param miplevel number
---@return UnityEngine.Color32[]
function m:GetPixels32(arrayElement, miplevel) end

---@overload fun(colors:UnityEngine.Color[], arrayElement:number)
---@param colors UnityEngine.Color[]
---@param arrayElement number
---@param miplevel number
function m:SetPixels(colors, arrayElement, miplevel) end

---@overload fun(colors:UnityEngine.Color32[], arrayElement:number)
---@param colors UnityEngine.Color32[]
---@param arrayElement number
---@param miplevel number
function m:SetPixels32(colors, arrayElement, miplevel) end

---@overload fun(updateMipmaps:boolean)
---@overload fun()
---@param updateMipmaps boolean
---@param makeNoLongerReadable boolean
function m:Apply(updateMipmaps, makeNoLongerReadable) end

UnityEngine.Texture2DArray = m
return m
