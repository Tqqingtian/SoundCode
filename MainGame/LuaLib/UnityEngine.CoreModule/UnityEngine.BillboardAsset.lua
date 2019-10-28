---@class UnityEngine.BillboardAsset : UnityEngine.Object
---@field public width number
---@field public height number
---@field public bottom number
---@field public imageCount number
---@field public vertexCount number
---@field public indexCount number
---@field public material UnityEngine.Material
local m = {}

---@overload fun():
---@param imageTexCoords UnityEngine.Vector4[]
function m:GetImageTexCoords(imageTexCoords) end

---@overload fun(imageTexCoords:UnityEngine.Vector4[])
---@param imageTexCoords UnityEngine.Vector4[]
function m:SetImageTexCoords(imageTexCoords) end

---@overload fun():
---@param vertices UnityEngine.Vector2[]
function m:GetVertices(vertices) end

---@overload fun(vertices:UnityEngine.Vector2[])
---@param vertices UnityEngine.Vector2[]
function m:SetVertices(vertices) end

---@overload fun():
---@param indices number[]
function m:GetIndices(indices) end

---@overload fun(indices:number[])
---@param indices number[]
function m:SetIndices(indices) end

UnityEngine.BillboardAsset = m
return m
