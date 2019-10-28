---@class UnityEngine.Mesh : UnityEngine.Object
---@field public uv1 UnityEngine.Vector2[]
---@field public indexFormat UnityEngine.Rendering.IndexFormat
---@field public vertexBufferCount number
---@field public blendShapeCount number
---@field public boneWeights UnityEngine.BoneWeight[]
---@field public bindposes UnityEngine.Matrix4x4[]
---@field public isReadable boolean
---@field public vertexCount number
---@field public subMeshCount number
---@field public bounds UnityEngine.Bounds
---@field public vertices UnityEngine.Vector3[]
---@field public normals UnityEngine.Vector3[]
---@field public tangents UnityEngine.Vector4[]
---@field public uv UnityEngine.Vector2[]
---@field public uv2 UnityEngine.Vector2[]
---@field public uv3 UnityEngine.Vector2[]
---@field public uv4 UnityEngine.Vector2[]
---@field public uv5 UnityEngine.Vector2[]
---@field public uv6 UnityEngine.Vector2[]
---@field public uv7 UnityEngine.Vector2[]
---@field public uv8 UnityEngine.Vector2[]
---@field public colors UnityEngine.Color[]
---@field public colors32 UnityEngine.Color32[]
---@field public triangles number[]
local m = {}

---@param index number
---@return System.IntPtr
function m:GetNativeVertexBufferPtr(index) end

---@return System.IntPtr
function m:GetNativeIndexBufferPtr() end

function m:ClearBlendShapes() end

---@param shapeIndex number
---@return string
function m:GetBlendShapeName(shapeIndex) end

---@param blendShapeName string
---@return number
function m:GetBlendShapeIndex(blendShapeName) end

---@param shapeIndex number
---@return number
function m:GetBlendShapeFrameCount(shapeIndex) end

---@param shapeIndex number
---@param frameIndex number
---@return number
function m:GetBlendShapeFrameWeight(shapeIndex, frameIndex) end

---@param shapeIndex number
---@param frameIndex number
---@param deltaVertices UnityEngine.Vector3[]
---@param deltaNormals UnityEngine.Vector3[]
---@param deltaTangents UnityEngine.Vector3[]
function m:GetBlendShapeFrameVertices(shapeIndex, frameIndex, deltaVertices, deltaNormals, deltaTangents) end

---@param shapeName string
---@param frameWeight number
---@param deltaVertices UnityEngine.Vector3[]
---@param deltaNormals UnityEngine.Vector3[]
---@param deltaTangents UnityEngine.Vector3[]
function m:AddBlendShapeFrame(shapeName, frameWeight, deltaVertices, deltaNormals, deltaTangents) end

---@param uvSetIndex number
---@return number
function m:GetUVDistributionMetric(uvSetIndex) end

---@param vertices UnityEngine.Vector3[]
function m:GetVertices(vertices) end

---@param inVertices UnityEngine.Vector3[]
function m:SetVertices(inVertices) end

---@param normals UnityEngine.Vector3[]
function m:GetNormals(normals) end

---@param inNormals UnityEngine.Vector3[]
function m:SetNormals(inNormals) end

---@param tangents UnityEngine.Vector4[]
function m:GetTangents(tangents) end

---@param inTangents UnityEngine.Vector4[]
function m:SetTangents(inTangents) end

---@overload fun(colors:UnityEngine.Color32[])
---@param colors UnityEngine.Color[]
function m:GetColors(colors) end

---@overload fun(inColors:UnityEngine.Color32[])
---@param inColors UnityEngine.Color[]
function m:SetColors(inColors) end

---@overload fun(channel:number, uvs:UnityEngine.Vector3[])
---@overload fun(channel:number, uvs:UnityEngine.Vector4[])
---@param channel number
---@param uvs UnityEngine.Vector2[]
function m:SetUVs(channel, uvs) end

---@overload fun(channel:number, uvs:UnityEngine.Vector3[])
---@overload fun(channel:number, uvs:UnityEngine.Vector4[])
---@param channel number
---@param uvs UnityEngine.Vector2[]
function m:GetUVs(channel, uvs) end

---@overload fun(submesh:number, applyBaseVertex:boolean):
---@overload fun(triangles:number[], submesh:number)
---@overload fun(triangles:number[], submesh:number, applyBaseVertex:boolean)
---@param submesh number
---@return number[]
function m:GetTriangles(submesh) end

---@overload fun(submesh:number, applyBaseVertex:boolean):
---@overload fun(indices:number[], submesh:number)
---@overload fun(indices:number[], submesh:number, applyBaseVertex:boolean)
---@param submesh number
---@return number[]
function m:GetIndices(submesh) end

---@param submesh number
---@return number
function m:GetIndexStart(submesh) end

---@param submesh number
---@return number
function m:GetIndexCount(submesh) end

---@param submesh number
---@return number
function m:GetBaseVertex(submesh) end

---@overload fun(triangles:number[], submesh:number, calculateBounds:boolean)
---@overload fun(triangles:number[], submesh:number, calculateBounds:boolean, baseVertex:number)
---@overload fun(triangles:number[], submesh:number)
---@overload fun(triangles:number[], submesh:number, calculateBounds:boolean)
---@overload fun(triangles:number[], submesh:number, calculateBounds:boolean, baseVertex:number)
---@param triangles number[]
---@param submesh number
function m:SetTriangles(triangles, submesh) end

---@overload fun(indices:number[], topology:UnityEngine.MeshTopology, submesh:number, calculateBounds:boolean)
---@overload fun(indices:number[], topology:UnityEngine.MeshTopology, submesh:number, calculateBounds:boolean, baseVertex:number)
---@param indices number[]
---@param topology UnityEngine.MeshTopology
---@param submesh number
function m:SetIndices(indices, topology, submesh) end

---@param bindposes UnityEngine.Matrix4x4[]
function m:GetBindposes(bindposes) end

---@param boneWeights UnityEngine.BoneWeight[]
function m:GetBoneWeights(boneWeights) end

---@overload fun()
---@param keepVertexLayout boolean
function m:Clear(keepVertexLayout) end

function m:RecalculateBounds() end

function m:RecalculateNormals() end

function m:RecalculateTangents() end

function m:MarkDynamic() end

---@param markNoLongerReadable boolean
function m:UploadMeshData(markNoLongerReadable) end

---@param submesh number
---@return UnityEngine.MeshTopology
function m:GetTopology(submesh) end

---@overload fun(combine:UnityEngine.CombineInstance[], mergeSubMeshes:boolean, useMatrices:boolean)
---@overload fun(combine:UnityEngine.CombineInstance[], mergeSubMeshes:boolean)
---@overload fun(combine:UnityEngine.CombineInstance[])
---@param combine UnityEngine.CombineInstance[]
---@param mergeSubMeshes boolean
---@param useMatrices boolean
---@param hasLightmapData boolean
function m:CombineMeshes(combine, mergeSubMeshes, useMatrices, hasLightmapData) end

function m:Optimize() end

UnityEngine.Mesh = m
return m
