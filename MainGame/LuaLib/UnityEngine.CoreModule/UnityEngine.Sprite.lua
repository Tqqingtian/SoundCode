---@class UnityEngine.Sprite : UnityEngine.Object
---@field public bounds UnityEngine.Bounds
---@field public rect UnityEngine.Rect
---@field public border UnityEngine.Vector4
---@field public texture UnityEngine.Texture2D
---@field public pixelsPerUnit number
---@field public associatedAlphaSplitTexture UnityEngine.Texture2D
---@field public pivot UnityEngine.Vector2
---@field public packed boolean
---@field public packingMode UnityEngine.SpritePackingMode
---@field public packingRotation UnityEngine.SpritePackingRotation
---@field public textureRect UnityEngine.Rect
---@field public textureRectOffset UnityEngine.Vector2
---@field public vertices UnityEngine.Vector2[]
---@field public triangles number[]
---@field public uv UnityEngine.Vector2[]
local m = {}

---@return number
function m:GetPhysicsShapeCount() end

---@param shapeIdx number
---@return number
function m:GetPhysicsShapePointCount(shapeIdx) end

---@param shapeIdx number
---@param physicsShape UnityEngine.Vector2[]
---@return number
function m:GetPhysicsShape(shapeIdx, physicsShape) end

---@param physicsShapes UnityEngine.Vector2[][]
function m:OverridePhysicsShape(physicsShapes) end

---@param vertices UnityEngine.Vector2[]
---@param triangles number[]
function m:OverrideGeometry(vertices, triangles) end

---@overload fun(texture:UnityEngine.Texture2D, rect:UnityEngine.Rect, pivot:UnityEngine.Vector2, pixelsPerUnit:number, extrude:number, meshType:UnityEngine.SpriteMeshType, border:UnityEngine.Vector4): @static
---@overload fun(texture:UnityEngine.Texture2D, rect:UnityEngine.Rect, pivot:UnityEngine.Vector2, pixelsPerUnit:number, extrude:number, meshType:UnityEngine.SpriteMeshType): @static
---@overload fun(texture:UnityEngine.Texture2D, rect:UnityEngine.Rect, pivot:UnityEngine.Vector2, pixelsPerUnit:number, extrude:number): @static
---@overload fun(texture:UnityEngine.Texture2D, rect:UnityEngine.Rect, pivot:UnityEngine.Vector2, pixelsPerUnit:number): @static
---@overload fun(texture:UnityEngine.Texture2D, rect:UnityEngine.Rect, pivot:UnityEngine.Vector2): @static
---@static
---@param texture UnityEngine.Texture2D
---@param rect UnityEngine.Rect
---@param pivot UnityEngine.Vector2
---@param pixelsPerUnit number
---@param extrude number
---@param meshType UnityEngine.SpriteMeshType
---@param border UnityEngine.Vector4
---@param generateFallbackPhysicsShape boolean
---@return UnityEngine.Sprite
function m.Create(texture, rect, pivot, pixelsPerUnit, extrude, meshType, border, generateFallbackPhysicsShape) end

---@extension
---@param channel UnityEngine.Rendering.VertexAttribute
---@return System.ValueType
function m.GetVertexAttribute(channel) end

---@extension
---@param channel UnityEngine.Rendering.VertexAttribute
---@param src System.ValueType
function m.SetVertexAttribute(channel, src) end

---@extension
---@return Unity.Collections.NativeArray_1_UnityEngine_Matrix4x4_
function m.GetBindPoses() end

---@extension
---@param src Unity.Collections.NativeArray_1_UnityEngine_Matrix4x4_
function m.SetBindPoses(src) end

---@extension
---@return Unity.Collections.NativeArray_1_System_UInt16_
function m.GetIndices() end

---@extension
---@param src Unity.Collections.NativeArray_1_System_UInt16_
function m.SetIndices(src) end

---@extension
---@return Unity.Collections.NativeArray_1_UnityEngine_BoneWeight_
function m.GetBoneWeights() end

---@extension
---@param src Unity.Collections.NativeArray_1_UnityEngine_BoneWeight_
function m.SetBoneWeights(src) end

---@extension
---@return UnityEngine.Experimental.U2D.SpriteBone[]
function m.GetBones() end

---@extension
---@param src UnityEngine.Experimental.U2D.SpriteBone[]
function m.SetBones(src) end

---@extension
---@param channel UnityEngine.Rendering.VertexAttribute
---@return boolean
function m.HasVertexAttribute(channel) end

---@extension
---@param count number
function m.SetVertexCount(count) end

---@extension
---@return number
function m.GetVertexCount() end

UnityEngine.Sprite = m
return m
