---@class UnityEngine.LineRenderer : UnityEngine.Renderer
---@field public numPositions number
---@field public startWidth number
---@field public endWidth number
---@field public widthMultiplier number
---@field public numCornerVertices number
---@field public numCapVertices number
---@field public useWorldSpace boolean
---@field public loop boolean
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

---@param start number
---@param _end number
function m:SetWidth(start, _end) end

---@param start UnityEngine.Color
---@param _end UnityEngine.Color
function m:SetColors(start, _end) end

---@param count number
function m:SetVertexCount(count) end

---@param index number
---@param position UnityEngine.Vector3
function m:SetPosition(index, position) end

---@param index number
---@return UnityEngine.Vector3
function m:GetPosition(index) end

---@param tolerance number
function m:Simplify(tolerance) end

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

UnityEngine.LineRenderer = m
return m
