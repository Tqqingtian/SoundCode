---@class UnityEngine.Graphics : System.Object
---@field public activeColorGamut UnityEngine.ColorGamut @static
---@field public activeTier UnityEngine.Rendering.GraphicsTier @static
---@field public activeColorBuffer UnityEngine.RenderBuffer @static
---@field public activeDepthBuffer UnityEngine.RenderBuffer @static
---@field public deviceName string @static
---@field public deviceVendor string @static
---@field public deviceVersion string @static
local m = {}

---@static
function m.ClearRandomWriteTargets() end

---@static
---@param buffer UnityEngine.Rendering.CommandBuffer
function m.ExecuteCommandBuffer(buffer) end

---@static
---@param buffer UnityEngine.Rendering.CommandBuffer
---@param queueType UnityEngine.Rendering.ComputeQueueType
function m.ExecuteCommandBufferAsync(buffer, queueType) end

---@overload fun(colorBuffer:UnityEngine.RenderBuffer, depthBuffer:UnityEngine.RenderBuffer, mipLevel:number, face:UnityEngine.CubemapFace, depthSlice:number) @static
---@overload fun(colorBuffers:UnityEngine.RenderBuffer[], depthBuffer:UnityEngine.RenderBuffer) @static
---@overload fun(setup:UnityEngine.RenderTargetSetup) @static
---@overload fun(rt:UnityEngine.RenderTexture) @static
---@overload fun(rt:UnityEngine.RenderTexture, mipLevel:number) @static
---@overload fun(rt:UnityEngine.RenderTexture, mipLevel:number, face:UnityEngine.CubemapFace) @static
---@overload fun(colorBuffer:UnityEngine.RenderBuffer, depthBuffer:UnityEngine.RenderBuffer) @static
---@overload fun(colorBuffer:UnityEngine.RenderBuffer, depthBuffer:UnityEngine.RenderBuffer, mipLevel:number) @static
---@overload fun(colorBuffer:UnityEngine.RenderBuffer, depthBuffer:UnityEngine.RenderBuffer, mipLevel:number, face:UnityEngine.CubemapFace) @static
---@static
---@param rt UnityEngine.RenderTexture
---@param mipLevel number
---@param face UnityEngine.CubemapFace
---@param depthSlice number
function m.SetRenderTarget(rt, mipLevel, face, depthSlice) end

---@overload fun(index:number, uav:UnityEngine.ComputeBuffer, preserveCounterValue:boolean) @static
---@overload fun(index:number, uav:UnityEngine.ComputeBuffer) @static
---@static
---@param index number
---@param uav UnityEngine.RenderTexture
function m.SetRandomWriteTarget(index, uav) end

---@overload fun(src:UnityEngine.Texture, srcElement:number, dst:UnityEngine.Texture, dstElement:number) @static
---@overload fun(src:UnityEngine.Texture, srcElement:number, srcMip:number, dst:UnityEngine.Texture, dstElement:number, dstMip:number) @static
---@overload fun(src:UnityEngine.Texture, srcElement:number, srcMip:number, srcX:number, srcY:number, srcWidth:number, srcHeight:number, dst:UnityEngine.Texture, dstElement:number, dstMip:number, dstX:number, dstY:number) @static
---@static
---@param src UnityEngine.Texture
---@param dst UnityEngine.Texture
function m.CopyTexture(src, dst) end

---@overload fun(src:UnityEngine.Texture, srcElement:number, dst:UnityEngine.Texture, dstElement:number): @static
---@static
---@param src UnityEngine.Texture
---@param dst UnityEngine.Texture
---@return boolean
function m.ConvertTexture(src, dst) end

---@overload fun(): @static
---@static
---@param stage UnityEngine.Rendering.SynchronisationStage
---@return UnityEngine.Rendering.GPUFence
function m.CreateGPUFence(stage) end

---@overload fun(fence:UnityEngine.Rendering.GPUFence) @static
---@static
---@param fence UnityEngine.Rendering.GPUFence
---@param stage UnityEngine.Rendering.SynchronisationStage
function m.WaitOnGPUFence(fence, stage) end

---@overload fun(screenRect:UnityEngine.Rect, texture:UnityEngine.Texture, sourceRect:UnityEngine.Rect, leftBorder:number, rightBorder:number, topBorder:number, bottomBorder:number, mat:UnityEngine.Material, pass:number) @static
---@overload fun(screenRect:UnityEngine.Rect, texture:UnityEngine.Texture, leftBorder:number, rightBorder:number, topBorder:number, bottomBorder:number, mat:UnityEngine.Material, pass:number) @static
---@overload fun(screenRect:UnityEngine.Rect, texture:UnityEngine.Texture, mat:UnityEngine.Material, pass:number) @static
---@overload fun(screenRect:UnityEngine.Rect, texture:UnityEngine.Texture, sourceRect:UnityEngine.Rect, leftBorder:number, rightBorder:number, topBorder:number, bottomBorder:number, color:UnityEngine.Color, mat:UnityEngine.Material) @static
---@overload fun(screenRect:UnityEngine.Rect, texture:UnityEngine.Texture, sourceRect:UnityEngine.Rect, leftBorder:number, rightBorder:number, topBorder:number, bottomBorder:number, color:UnityEngine.Color) @static
---@overload fun(screenRect:UnityEngine.Rect, texture:UnityEngine.Texture, sourceRect:UnityEngine.Rect, leftBorder:number, rightBorder:number, topBorder:number, bottomBorder:number, mat:UnityEngine.Material) @static
---@overload fun(screenRect:UnityEngine.Rect, texture:UnityEngine.Texture, sourceRect:UnityEngine.Rect, leftBorder:number, rightBorder:number, topBorder:number, bottomBorder:number) @static
---@overload fun(screenRect:UnityEngine.Rect, texture:UnityEngine.Texture, leftBorder:number, rightBorder:number, topBorder:number, bottomBorder:number, mat:UnityEngine.Material) @static
---@overload fun(screenRect:UnityEngine.Rect, texture:UnityEngine.Texture, leftBorder:number, rightBorder:number, topBorder:number, bottomBorder:number) @static
---@overload fun(screenRect:UnityEngine.Rect, texture:UnityEngine.Texture, mat:UnityEngine.Material) @static
---@overload fun(screenRect:UnityEngine.Rect, texture:UnityEngine.Texture) @static
---@static
---@param screenRect UnityEngine.Rect
---@param texture UnityEngine.Texture
---@param sourceRect UnityEngine.Rect
---@param leftBorder number
---@param rightBorder number
---@param topBorder number
---@param bottomBorder number
---@param color UnityEngine.Color
---@param mat UnityEngine.Material
---@param pass number
function m.DrawTexture(screenRect, texture, sourceRect, leftBorder, rightBorder, topBorder, bottomBorder, color, mat, pass) end

---@overload fun(mesh:UnityEngine.Mesh, matrix:UnityEngine.Matrix4x4, materialIndex:number) @static
---@overload fun(mesh:UnityEngine.Mesh, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion) @static
---@overload fun(mesh:UnityEngine.Mesh, matrix:UnityEngine.Matrix4x4) @static
---@static
---@param mesh UnityEngine.Mesh
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@param materialIndex number
function m.DrawMeshNow(mesh, position, rotation, materialIndex) end

---@overload fun(mesh:UnityEngine.Mesh, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion, material:UnityEngine.Material, layer:number, camera:UnityEngine.Camera, submeshIndex:number, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:boolean, probeAnchor:UnityEngine.Transform, useLightProbes:boolean) @static
---@overload fun(mesh:UnityEngine.Mesh, matrix:UnityEngine.Matrix4x4, material:UnityEngine.Material, layer:number, camera:UnityEngine.Camera, submeshIndex:number, properties:UnityEngine.MaterialPropertyBlock, castShadows:boolean, receiveShadows:boolean, useLightProbes:boolean) @static
---@overload fun(mesh:UnityEngine.Mesh, matrix:UnityEngine.Matrix4x4, material:UnityEngine.Material, layer:number, camera:UnityEngine.Camera, submeshIndex:number, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:boolean, probeAnchor:UnityEngine.Transform, lightProbeUsage:UnityEngine.Rendering.LightProbeUsage, lightProbeProxyVolume:UnityEngine.LightProbeProxyVolume) @static
---@overload fun(mesh:UnityEngine.Mesh, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion) @static
---@overload fun(mesh:UnityEngine.Mesh, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion, materialIndex:number) @static
---@overload fun(mesh:UnityEngine.Mesh, matrix:UnityEngine.Matrix4x4) @static
---@overload fun(mesh:UnityEngine.Mesh, matrix:UnityEngine.Matrix4x4, materialIndex:number) @static
---@overload fun(mesh:UnityEngine.Mesh, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion, material:UnityEngine.Material, layer:number) @static
---@overload fun(mesh:UnityEngine.Mesh, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion, material:UnityEngine.Material, layer:number, camera:UnityEngine.Camera) @static
---@overload fun(mesh:UnityEngine.Mesh, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion, material:UnityEngine.Material, layer:number, camera:UnityEngine.Camera, submeshIndex:number) @static
---@overload fun(mesh:UnityEngine.Mesh, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion, material:UnityEngine.Material, layer:number, camera:UnityEngine.Camera, submeshIndex:number, properties:UnityEngine.MaterialPropertyBlock) @static
---@overload fun(mesh:UnityEngine.Mesh, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion, material:UnityEngine.Material, layer:number, camera:UnityEngine.Camera, submeshIndex:number, properties:UnityEngine.MaterialPropertyBlock, castShadows:boolean) @static
---@overload fun(mesh:UnityEngine.Mesh, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion, material:UnityEngine.Material, layer:number, camera:UnityEngine.Camera, submeshIndex:number, properties:UnityEngine.MaterialPropertyBlock, castShadows:boolean, receiveShadows:boolean) @static
---@overload fun(mesh:UnityEngine.Mesh, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion, material:UnityEngine.Material, layer:number, camera:UnityEngine.Camera, submeshIndex:number, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode) @static
---@overload fun(mesh:UnityEngine.Mesh, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion, material:UnityEngine.Material, layer:number, camera:UnityEngine.Camera, submeshIndex:number, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:boolean) @static
---@overload fun(mesh:UnityEngine.Mesh, position:UnityEngine.Vector3, rotation:UnityEngine.Quaternion, material:UnityEngine.Material, layer:number, camera:UnityEngine.Camera, submeshIndex:number, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:boolean, probeAnchor:UnityEngine.Transform) @static
---@overload fun(mesh:UnityEngine.Mesh, matrix:UnityEngine.Matrix4x4, material:UnityEngine.Material, layer:number) @static
---@overload fun(mesh:UnityEngine.Mesh, matrix:UnityEngine.Matrix4x4, material:UnityEngine.Material, layer:number, camera:UnityEngine.Camera) @static
---@overload fun(mesh:UnityEngine.Mesh, matrix:UnityEngine.Matrix4x4, material:UnityEngine.Material, layer:number, camera:UnityEngine.Camera, submeshIndex:number) @static
---@overload fun(mesh:UnityEngine.Mesh, matrix:UnityEngine.Matrix4x4, material:UnityEngine.Material, layer:number, camera:UnityEngine.Camera, submeshIndex:number, properties:UnityEngine.MaterialPropertyBlock) @static
---@overload fun(mesh:UnityEngine.Mesh, matrix:UnityEngine.Matrix4x4, material:UnityEngine.Material, layer:number, camera:UnityEngine.Camera, submeshIndex:number, properties:UnityEngine.MaterialPropertyBlock, castShadows:boolean) @static
---@overload fun(mesh:UnityEngine.Mesh, matrix:UnityEngine.Matrix4x4, material:UnityEngine.Material, layer:number, camera:UnityEngine.Camera, submeshIndex:number, properties:UnityEngine.MaterialPropertyBlock, castShadows:boolean, receiveShadows:boolean) @static
---@overload fun(mesh:UnityEngine.Mesh, matrix:UnityEngine.Matrix4x4, material:UnityEngine.Material, layer:number, camera:UnityEngine.Camera, submeshIndex:number, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode) @static
---@overload fun(mesh:UnityEngine.Mesh, matrix:UnityEngine.Matrix4x4, material:UnityEngine.Material, layer:number, camera:UnityEngine.Camera, submeshIndex:number, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:boolean) @static
---@overload fun(mesh:UnityEngine.Mesh, matrix:UnityEngine.Matrix4x4, material:UnityEngine.Material, layer:number, camera:UnityEngine.Camera, submeshIndex:number, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:boolean, probeAnchor:UnityEngine.Transform) @static
---@overload fun(mesh:UnityEngine.Mesh, matrix:UnityEngine.Matrix4x4, material:UnityEngine.Material, layer:number, camera:UnityEngine.Camera, submeshIndex:number, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:boolean, probeAnchor:UnityEngine.Transform, useLightProbes:boolean) @static
---@overload fun(mesh:UnityEngine.Mesh, matrix:UnityEngine.Matrix4x4, material:UnityEngine.Material, layer:number, camera:UnityEngine.Camera, submeshIndex:number, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:boolean, probeAnchor:UnityEngine.Transform, lightProbeUsage:UnityEngine.Rendering.LightProbeUsage) @static
---@static
---@param mesh UnityEngine.Mesh
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@param material UnityEngine.Material
---@param layer number
---@param camera UnityEngine.Camera
---@param submeshIndex number
---@param properties UnityEngine.MaterialPropertyBlock
---@param castShadows boolean
---@param receiveShadows boolean
---@param useLightProbes boolean
function m.DrawMesh(mesh, position, rotation, material, layer, camera, submeshIndex, properties, castShadows, receiveShadows, useLightProbes) end

---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:number, material:UnityEngine.Material, matrices:UnityEngine.Matrix4x4[], properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:boolean, layer:number, camera:UnityEngine.Camera, lightProbeUsage:UnityEngine.Rendering.LightProbeUsage, lightProbeProxyVolume:UnityEngine.LightProbeProxyVolume) @static
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:number, material:UnityEngine.Material, matrices:UnityEngine.Matrix4x4[]) @static
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:number, material:UnityEngine.Material, matrices:UnityEngine.Matrix4x4[], count:number) @static
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:number, material:UnityEngine.Material, matrices:UnityEngine.Matrix4x4[], count:number, properties:UnityEngine.MaterialPropertyBlock) @static
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:number, material:UnityEngine.Material, matrices:UnityEngine.Matrix4x4[], count:number, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode) @static
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:number, material:UnityEngine.Material, matrices:UnityEngine.Matrix4x4[], count:number, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:boolean) @static
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:number, material:UnityEngine.Material, matrices:UnityEngine.Matrix4x4[], count:number, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:boolean, layer:number) @static
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:number, material:UnityEngine.Material, matrices:UnityEngine.Matrix4x4[], count:number, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:boolean, layer:number, camera:UnityEngine.Camera) @static
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:number, material:UnityEngine.Material, matrices:UnityEngine.Matrix4x4[], count:number, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:boolean, layer:number, camera:UnityEngine.Camera, lightProbeUsage:UnityEngine.Rendering.LightProbeUsage) @static
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:number, material:UnityEngine.Material, matrices:UnityEngine.Matrix4x4[]) @static
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:number, material:UnityEngine.Material, matrices:UnityEngine.Matrix4x4[], properties:UnityEngine.MaterialPropertyBlock) @static
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:number, material:UnityEngine.Material, matrices:UnityEngine.Matrix4x4[], properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode) @static
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:number, material:UnityEngine.Material, matrices:UnityEngine.Matrix4x4[], properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:boolean) @static
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:number, material:UnityEngine.Material, matrices:UnityEngine.Matrix4x4[], properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:boolean, layer:number) @static
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:number, material:UnityEngine.Material, matrices:UnityEngine.Matrix4x4[], properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:boolean, layer:number, camera:UnityEngine.Camera) @static
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:number, material:UnityEngine.Material, matrices:UnityEngine.Matrix4x4[], properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:boolean, layer:number, camera:UnityEngine.Camera, lightProbeUsage:UnityEngine.Rendering.LightProbeUsage) @static
---@static
---@param mesh UnityEngine.Mesh
---@param submeshIndex number
---@param material UnityEngine.Material
---@param matrices UnityEngine.Matrix4x4[]
---@param count number
---@param properties UnityEngine.MaterialPropertyBlock
---@param castShadows UnityEngine.Rendering.ShadowCastingMode
---@param receiveShadows boolean
---@param layer number
---@param camera UnityEngine.Camera
---@param lightProbeUsage UnityEngine.Rendering.LightProbeUsage
---@param lightProbeProxyVolume UnityEngine.LightProbeProxyVolume
function m.DrawMeshInstanced(mesh, submeshIndex, material, matrices, count, properties, castShadows, receiveShadows, layer, camera, lightProbeUsage, lightProbeProxyVolume) end

---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:number, material:UnityEngine.Material, bounds:UnityEngine.Bounds, bufferWithArgs:UnityEngine.ComputeBuffer) @static
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:number, material:UnityEngine.Material, bounds:UnityEngine.Bounds, bufferWithArgs:UnityEngine.ComputeBuffer, argsOffset:number) @static
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:number, material:UnityEngine.Material, bounds:UnityEngine.Bounds, bufferWithArgs:UnityEngine.ComputeBuffer, argsOffset:number, properties:UnityEngine.MaterialPropertyBlock) @static
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:number, material:UnityEngine.Material, bounds:UnityEngine.Bounds, bufferWithArgs:UnityEngine.ComputeBuffer, argsOffset:number, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode) @static
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:number, material:UnityEngine.Material, bounds:UnityEngine.Bounds, bufferWithArgs:UnityEngine.ComputeBuffer, argsOffset:number, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:boolean) @static
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:number, material:UnityEngine.Material, bounds:UnityEngine.Bounds, bufferWithArgs:UnityEngine.ComputeBuffer, argsOffset:number, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:boolean, layer:number) @static
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:number, material:UnityEngine.Material, bounds:UnityEngine.Bounds, bufferWithArgs:UnityEngine.ComputeBuffer, argsOffset:number, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:boolean, layer:number, camera:UnityEngine.Camera) @static
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:number, material:UnityEngine.Material, bounds:UnityEngine.Bounds, bufferWithArgs:UnityEngine.ComputeBuffer, argsOffset:number, properties:UnityEngine.MaterialPropertyBlock, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:boolean, layer:number, camera:UnityEngine.Camera, lightProbeUsage:UnityEngine.Rendering.LightProbeUsage) @static
---@static
---@param mesh UnityEngine.Mesh
---@param submeshIndex number
---@param material UnityEngine.Material
---@param bounds UnityEngine.Bounds
---@param bufferWithArgs UnityEngine.ComputeBuffer
---@param argsOffset number
---@param properties UnityEngine.MaterialPropertyBlock
---@param castShadows UnityEngine.Rendering.ShadowCastingMode
---@param receiveShadows boolean
---@param layer number
---@param camera UnityEngine.Camera
---@param lightProbeUsage UnityEngine.Rendering.LightProbeUsage
---@param lightProbeProxyVolume UnityEngine.LightProbeProxyVolume
function m.DrawMeshInstancedIndirect(mesh, submeshIndex, material, bounds, bufferWithArgs, argsOffset, properties, castShadows, receiveShadows, layer, camera, lightProbeUsage, lightProbeProxyVolume) end

---@overload fun(topology:UnityEngine.MeshTopology, vertexCount:number) @static
---@static
---@param topology UnityEngine.MeshTopology
---@param vertexCount number
---@param instanceCount number
function m.DrawProcedural(topology, vertexCount, instanceCount) end

---@overload fun(topology:UnityEngine.MeshTopology, bufferWithArgs:UnityEngine.ComputeBuffer) @static
---@static
---@param topology UnityEngine.MeshTopology
---@param bufferWithArgs UnityEngine.ComputeBuffer
---@param argsOffset number
function m.DrawProceduralIndirect(topology, bufferWithArgs, argsOffset) end

---@overload fun(source:UnityEngine.Texture, dest:UnityEngine.RenderTexture, scale:UnityEngine.Vector2, offset:UnityEngine.Vector2) @static
---@overload fun(source:UnityEngine.Texture, dest:UnityEngine.RenderTexture, mat:UnityEngine.Material, pass:number) @static
---@overload fun(source:UnityEngine.Texture, dest:UnityEngine.RenderTexture, mat:UnityEngine.Material) @static
---@overload fun(source:UnityEngine.Texture, mat:UnityEngine.Material, pass:number) @static
---@overload fun(source:UnityEngine.Texture, mat:UnityEngine.Material) @static
---@static
---@param source UnityEngine.Texture
---@param dest UnityEngine.RenderTexture
function m.Blit(source, dest) end

---@overload fun(source:UnityEngine.Texture, dest:UnityEngine.RenderTexture, mat:UnityEngine.Material) @static
---@static
---@param source UnityEngine.Texture
---@param dest UnityEngine.RenderTexture
---@param mat UnityEngine.Material
---@param ... UnityEngine.Vector2|UnityEngine.Vector2[]
function m.BlitMultiTap(source, dest, mat, ...) end

UnityEngine.Graphics = m
return m
