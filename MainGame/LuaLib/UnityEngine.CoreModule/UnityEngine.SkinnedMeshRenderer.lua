---@class UnityEngine.SkinnedMeshRenderer : UnityEngine.Renderer
---@field public quality UnityEngine.SkinQuality
---@field public updateWhenOffscreen boolean
---@field public forceMatrixRecalculationPerRender boolean
---@field public rootBone UnityEngine.Transform
---@field public bones UnityEngine.Transform[]
---@field public sharedMesh UnityEngine.Mesh
---@field public skinnedMotionVectors boolean
---@field public localBounds UnityEngine.Bounds
local m = {}

---@param index number
---@return number
function m:GetBlendShapeWeight(index) end

---@param index number
---@param value number
function m:SetBlendShapeWeight(index, value) end

---@param mesh UnityEngine.Mesh
function m:BakeMesh(mesh) end

UnityEngine.SkinnedMeshRenderer = m
return m
