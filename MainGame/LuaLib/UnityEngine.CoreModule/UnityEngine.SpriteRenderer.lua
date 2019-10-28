---@class UnityEngine.SpriteRenderer : UnityEngine.Renderer
---@field public sprite UnityEngine.Sprite
---@field public drawMode UnityEngine.SpriteDrawMode
---@field public size UnityEngine.Vector2
---@field public adaptiveModeThreshold number
---@field public tileMode UnityEngine.SpriteTileMode
---@field public color UnityEngine.Color
---@field public maskInteraction UnityEngine.SpriteMaskInteraction
---@field public flipX boolean
---@field public flipY boolean
---@field public spriteSortPoint UnityEngine.SpriteSortPoint
local m = {}

---@extension
---@return Unity.Collections.NativeArray_1_UnityEngine_Vector3_
function m.GetDeformableVertices() end

---@extension
function m.DeactivateDeformableBuffer() end

---@extension
---@param fence Unity.Jobs.JobHandle
function m.UpdateDeformableBuffer(fence) end

UnityEngine.SpriteRenderer = m
return m
