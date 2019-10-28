---@class UnityEngine.TrailRenderer : UnityEngine.Renderer
---@field public numPositions number
---@field public time number
---@field public startWidth number
---@field public endWidth number
---@field public widthMultiplier number
---@field public autodestruct boolean
---@field public emitting boolean
---@field public numCornerVertices number
---@field public numCapVertices number
---@field public minVertexDistance number
---@field public startColor UnityEngine.Color
---@field public endColor UnityEngine.Color
---@field public positionCount number
---@field public shadowBias number
---@field public generateLightingData boolean
---@field public textureMode UnityEngine.LineTextureMode
---@field public alignment UnityEngine.LineAlignment
---@field public widthCurve UnityEngine.AnimationCurve
---@field public colorGradient UnityEngine.Gradient
local m = {}

---@param index number
---@param position UnityEngine.Vector3
function m:SetPosition(index, position) end

---@param index number
---@return UnityEngine.Vector3
function m:GetPosition(index) end

function m:Clear() end

---@overload fun(mesh:UnityEngine.Mesh)
---@overload fun(mesh:UnityEngine.Mesh, camera:UnityEngine.Camera, useTransform:boolean)
---@overload fun(mesh:UnityEngine.Mesh, camera:UnityEngine.Camera)
---@param mesh UnityEngine.Mesh
---@param useTransform boolean
function m:BakeMesh(mesh, useTransform) end

---@return number
function m:GetPositions() end

---@param positions UnityEngine.Vector3[]
function m:SetPositions(positions) end

---@param position UnityEngine.Vector3
function m:AddPosition(position) end

---@param positions UnityEngine.Vector3[]
function m:AddPositions(positions) end

UnityEngine.TrailRenderer = m
return m
