---@class UnityEngine.Experimental.U2D.SpriteRendererDataAccessExtensions : System.Object
local m = {}

---@static
---@param spriteRenderer UnityEngine.SpriteRenderer
---@return Unity.Collections.NativeArray_1_UnityEngine_Vector3_
function m.GetDeformableVertices(spriteRenderer) end

---@static
---@param renderer UnityEngine.SpriteRenderer
function m.DeactivateDeformableBuffer(renderer) end

---@static
---@param spriteRenderer UnityEngine.SpriteRenderer
---@param fence Unity.Jobs.JobHandle
function m.UpdateDeformableBuffer(spriteRenderer, fence) end

UnityEngine.Experimental.U2D.SpriteRendererDataAccessExtensions = m
return m
