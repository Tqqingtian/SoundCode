---@class UnityEngine.Experimental.U2D.SpriteDataAccessExtensions : System.Object
local m = {}

---@static
---@param sprite UnityEngine.Sprite
---@param channel UnityEngine.Rendering.VertexAttribute
---@return System.ValueType
function m.GetVertexAttribute(sprite, channel) end

---@static
---@param sprite UnityEngine.Sprite
---@param channel UnityEngine.Rendering.VertexAttribute
---@param src System.ValueType
function m.SetVertexAttribute(sprite, channel, src) end

---@static
---@param sprite UnityEngine.Sprite
---@return Unity.Collections.NativeArray_1_UnityEngine_Matrix4x4_
function m.GetBindPoses(sprite) end

---@static
---@param sprite UnityEngine.Sprite
---@param src Unity.Collections.NativeArray_1_UnityEngine_Matrix4x4_
function m.SetBindPoses(sprite, src) end

---@static
---@param sprite UnityEngine.Sprite
---@return Unity.Collections.NativeArray_1_System_UInt16_
function m.GetIndices(sprite) end

---@static
---@param sprite UnityEngine.Sprite
---@param src Unity.Collections.NativeArray_1_System_UInt16_
function m.SetIndices(sprite, src) end

---@static
---@param sprite UnityEngine.Sprite
---@return Unity.Collections.NativeArray_1_UnityEngine_BoneWeight_
function m.GetBoneWeights(sprite) end

---@static
---@param sprite UnityEngine.Sprite
---@param src Unity.Collections.NativeArray_1_UnityEngine_BoneWeight_
function m.SetBoneWeights(sprite, src) end

---@static
---@param sprite UnityEngine.Sprite
---@return UnityEngine.Experimental.U2D.SpriteBone[]
function m.GetBones(sprite) end

---@static
---@param sprite UnityEngine.Sprite
---@param src UnityEngine.Experimental.U2D.SpriteBone[]
function m.SetBones(sprite, src) end

---@static
---@param sprite UnityEngine.Sprite
---@param channel UnityEngine.Rendering.VertexAttribute
---@return boolean
function m.HasVertexAttribute(sprite, channel) end

---@static
---@param sprite UnityEngine.Sprite
---@param count number
function m.SetVertexCount(sprite, count) end

---@static
---@param sprite UnityEngine.Sprite
---@return number
function m.GetVertexCount(sprite) end

UnityEngine.Experimental.U2D.SpriteDataAccessExtensions = m
return m
