---@class UnityEngine.Rendering.CommandBuffer : System.Object
---@field public name string
---@field public sizeInBytes number
local m = {}

---@overload fun(src:UnityEngine.Rendering.RenderTargetIdentifier, srcElement:number, dst:UnityEngine.Rendering.RenderTargetIdentifier, dstElement:number)
---@param src UnityEngine.Rendering.RenderTargetIdentifier
---@param dst UnityEngine.Rendering.RenderTargetIdentifier
function m:ConvertTexture(src, dst) end

---@overload fun(src:UnityEngine.ComputeBuffer, size:number, offset:number, callback:fun(obj:UnityEngine.Rendering.AsyncGPUReadbackRequest))
---@overload fun(src:UnityEngine.Texture, callback:fun(obj:UnityEngine.Rendering.AsyncGPUReadbackRequest))
---@overload fun(src:UnityEngine.Texture, mipIndex:number, callback:fun(obj:UnityEngine.Rendering.AsyncGPUReadbackRequest))
---@overload fun(src:UnityEngine.Texture, mipIndex:number, dstFormat:UnityEngine.TextureFormat, callback:fun(obj:UnityEngine.Rendering.AsyncGPUReadbackRequest))
---@overload fun(src:UnityEngine.Texture, mipIndex:number, x:number, width:number, y:number, height:number, z:number, depth:number, callback:fun(obj:UnityEngine.Rendering.AsyncGPUReadbackRequest))
---@overload fun(src:UnityEngine.Texture, mipIndex:number, x:number, width:number, y:number, height:number, z:number, depth:number, dstFormat:UnityEngine.TextureFormat, callback:fun(obj:UnityEngine.Rendering.AsyncGPUReadbackRequest))
---@param src UnityEngine.ComputeBuffer
---@param callback fun(obj:UnityEngine.Rendering.AsyncGPUReadbackRequest)
function m:RequestAsyncReadback(src, callback) end

---@param invertCulling boolean
function m:SetInvertCulling(invertCulling) end

---@overload fun(computeShader:UnityEngine.ComputeShader, name:string, val:number)
---@param computeShader UnityEngine.ComputeShader
---@param nameID number
---@param val number
function m:SetComputeFloatParam(computeShader, nameID, val) end

---@overload fun(computeShader:UnityEngine.ComputeShader, name:string, val:number)
---@param computeShader UnityEngine.ComputeShader
---@param nameID number
---@param val number
function m:SetComputeIntParam(computeShader, nameID, val) end

---@overload fun(computeShader:UnityEngine.ComputeShader, name:string, val:UnityEngine.Vector4)
---@param computeShader UnityEngine.ComputeShader
---@param nameID number
---@param val UnityEngine.Vector4
function m:SetComputeVectorParam(computeShader, nameID, val) end

---@overload fun(computeShader:UnityEngine.ComputeShader, name:string, values:UnityEngine.Vector4[])
---@param computeShader UnityEngine.ComputeShader
---@param nameID number
---@param values UnityEngine.Vector4[]
function m:SetComputeVectorArrayParam(computeShader, nameID, values) end

---@overload fun(computeShader:UnityEngine.ComputeShader, name:string, val:UnityEngine.Matrix4x4)
---@param computeShader UnityEngine.ComputeShader
---@param nameID number
---@param val UnityEngine.Matrix4x4
function m:SetComputeMatrixParam(computeShader, nameID, val) end

---@overload fun(computeShader:UnityEngine.ComputeShader, name:string, values:UnityEngine.Matrix4x4[])
---@param computeShader UnityEngine.ComputeShader
---@param nameID number
---@param values UnityEngine.Matrix4x4[]
function m:SetComputeMatrixArrayParam(computeShader, nameID, values) end

---@overload fun(computeShader:UnityEngine.ComputeShader, kernelIndex:number, name:string, buffer:UnityEngine.ComputeBuffer)
---@param computeShader UnityEngine.ComputeShader
---@param kernelIndex number
---@param nameID number
---@param buffer UnityEngine.ComputeBuffer
function m:SetComputeBufferParam(computeShader, kernelIndex, nameID, buffer) end

---@param src UnityEngine.ComputeBuffer
---@param dst UnityEngine.ComputeBuffer
---@param dstOffsetBytes number
function m:CopyCounterValue(src, dst, dstOffsetBytes) end

function m:Clear() end

function m:ClearRandomWriteTargets() end

---@param pixelRect UnityEngine.Rect
function m:SetViewport(pixelRect) end

---@param scissor UnityEngine.Rect
function m:EnableScissorRect(scissor) end

function m:DisableScissorRect() end

---@overload fun(nameID:number, width:number, height:number, depthBuffer:number, filter:UnityEngine.FilterMode, format:UnityEngine.RenderTextureFormat, readWrite:UnityEngine.RenderTextureReadWrite, antiAliasing:number, enableRandomWrite:boolean, memorylessMode:UnityEngine.RenderTextureMemoryless)
---@overload fun(nameID:number, width:number, height:number, depthBuffer:number, filter:UnityEngine.FilterMode, format:UnityEngine.RenderTextureFormat, readWrite:UnityEngine.RenderTextureReadWrite, antiAliasing:number, enableRandomWrite:boolean)
---@overload fun(nameID:number, width:number, height:number, depthBuffer:number, filter:UnityEngine.FilterMode, format:UnityEngine.RenderTextureFormat, readWrite:UnityEngine.RenderTextureReadWrite, antiAliasing:number)
---@overload fun(nameID:number, width:number, height:number, depthBuffer:number, filter:UnityEngine.FilterMode, format:UnityEngine.RenderTextureFormat, readWrite:UnityEngine.RenderTextureReadWrite)
---@overload fun(nameID:number, width:number, height:number, depthBuffer:number, filter:UnityEngine.FilterMode, format:UnityEngine.RenderTextureFormat)
---@overload fun(nameID:number, width:number, height:number, depthBuffer:number, filter:UnityEngine.FilterMode)
---@overload fun(nameID:number, width:number, height:number, depthBuffer:number)
---@overload fun(nameID:number, width:number, height:number)
---@overload fun(nameID:number, desc:UnityEngine.RenderTextureDescriptor, filter:UnityEngine.FilterMode)
---@overload fun(nameID:number, desc:UnityEngine.RenderTextureDescriptor)
---@param nameID number
---@param width number
---@param height number
---@param depthBuffer number
---@param filter UnityEngine.FilterMode
---@param format UnityEngine.RenderTextureFormat
---@param readWrite UnityEngine.RenderTextureReadWrite
---@param antiAliasing number
---@param enableRandomWrite boolean
---@param memorylessMode UnityEngine.RenderTextureMemoryless
---@param useDynamicScale boolean
function m:GetTemporaryRT(nameID, width, height, depthBuffer, filter, format, readWrite, antiAliasing, enableRandomWrite, memorylessMode, useDynamicScale) end

---@overload fun(nameID:number, width:number, height:number, slices:number, depthBuffer:number, filter:UnityEngine.FilterMode, format:UnityEngine.RenderTextureFormat, readWrite:UnityEngine.RenderTextureReadWrite, antiAliasing:number, enableRandomWrite:boolean)
---@overload fun(nameID:number, width:number, height:number, slices:number, depthBuffer:number, filter:UnityEngine.FilterMode, format:UnityEngine.RenderTextureFormat, readWrite:UnityEngine.RenderTextureReadWrite, antiAliasing:number)
---@overload fun(nameID:number, width:number, height:number, slices:number, depthBuffer:number, filter:UnityEngine.FilterMode, format:UnityEngine.RenderTextureFormat, readWrite:UnityEngine.RenderTextureReadWrite)
---@overload fun(nameID:number, width:number, height:number, slices:number, depthBuffer:number, filter:UnityEngine.FilterMode, format:UnityEngine.RenderTextureFormat)
---@overload fun(nameID:number, width:number, height:number, slices:number, depthBuffer:number, filter:UnityEngine.FilterMode)
---@overload fun(nameID:number, width:number, height:number, slices:number, depthBuffer:number)
---@overload fun(nameID:number, width:number, height:number, slices:number)
---@param nameID number
---@param width number
---@param height number
---@param slices number
---@param depthBuffer number
---@param filter UnityEngine.FilterMode
---@param format UnityEngine.RenderTextureFormat
---@param readWrite UnityEngine.RenderTextureReadWrite
---@param antiAliasing number
---@param enableRandomWrite boolean
---@param useDynamicScale boolean
function m:GetTemporaryRTArray(nameID, width, height, slices, depthBuffer, filter, format, readWrite, antiAliasing, enableRandomWrite, useDynamicScale) end

---@param nameID number
function m:ReleaseTemporaryRT(nameID) end

---@overload fun(clearDepth:boolean, clearColor:boolean, backgroundColor:UnityEngine.Color)
---@param clearDepth boolean
---@param clearColor boolean
---@param backgroundColor UnityEngine.Color
---@param depth number
function m:ClearRenderTarget(clearDepth, clearColor, backgroundColor, depth) end

---@overload fun(name:string, value:number)
---@param nameID number
---@param value number
function m:SetGlobalFloat(nameID, value) end

---@overload fun(name:string, value:number)
---@param nameID number
---@param value number
function m:SetGlobalInt(nameID, value) end

---@overload fun(name:string, value:UnityEngine.Vector4)
---@param nameID number
---@param value UnityEngine.Vector4
function m:SetGlobalVector(nameID, value) end

---@overload fun(name:string, value:UnityEngine.Color)
---@param nameID number
---@param value UnityEngine.Color
function m:SetGlobalColor(nameID, value) end

---@overload fun(name:string, value:UnityEngine.Matrix4x4)
---@param nameID number
---@param value UnityEngine.Matrix4x4
function m:SetGlobalMatrix(nameID, value) end

---@param keyword string
function m:EnableShaderKeyword(keyword) end

---@param keyword string
function m:DisableShaderKeyword(keyword) end

---@param view UnityEngine.Matrix4x4
function m:SetViewMatrix(view) end

---@param proj UnityEngine.Matrix4x4
function m:SetProjectionMatrix(proj) end

---@param view UnityEngine.Matrix4x4
---@param proj UnityEngine.Matrix4x4
function m:SetViewProjectionMatrices(view, proj) end

---@param bias number
---@param slopeBias number
function m:SetGlobalDepthBias(bias, slopeBias) end

---@overload fun(propertyName:string, values:number[])
---@overload fun(nameID:number, values:number[])
---@overload fun(propertyName:string, values:number[])
---@param nameID number
---@param values number[]
function m:SetGlobalFloatArray(nameID, values) end

---@overload fun(propertyName:string, values:UnityEngine.Vector4[])
---@overload fun(nameID:number, values:UnityEngine.Vector4[])
---@overload fun(propertyName:string, values:UnityEngine.Vector4[])
---@param nameID number
---@param values UnityEngine.Vector4[]
function m:SetGlobalVectorArray(nameID, values) end

---@overload fun(propertyName:string, values:UnityEngine.Matrix4x4[])
---@overload fun(nameID:number, values:UnityEngine.Matrix4x4[])
---@overload fun(propertyName:string, values:UnityEngine.Matrix4x4[])
---@param nameID number
---@param values UnityEngine.Matrix4x4[]
function m:SetGlobalMatrixArray(nameID, values) end

---@overload fun(name:string, value:UnityEngine.ComputeBuffer)
---@param nameID number
---@param value UnityEngine.ComputeBuffer
function m:SetGlobalBuffer(nameID, value) end

---@param name string
function m:BeginSample(name) end

---@param name string
function m:EndSample(name) end

---@overload fun(rt:UnityEngine.Rendering.RenderTargetIdentifier, loadAction:UnityEngine.Rendering.RenderBufferLoadAction, storeAction:UnityEngine.Rendering.RenderBufferStoreAction)
---@overload fun(rt:UnityEngine.Rendering.RenderTargetIdentifier, colorLoadAction:UnityEngine.Rendering.RenderBufferLoadAction, colorStoreAction:UnityEngine.Rendering.RenderBufferStoreAction, depthLoadAction:UnityEngine.Rendering.RenderBufferLoadAction, depthStoreAction:UnityEngine.Rendering.RenderBufferStoreAction)
---@overload fun(rt:UnityEngine.Rendering.RenderTargetIdentifier, mipLevel:number)
---@overload fun(rt:UnityEngine.Rendering.RenderTargetIdentifier, mipLevel:number, cubemapFace:UnityEngine.CubemapFace)
---@overload fun(rt:UnityEngine.Rendering.RenderTargetIdentifier, mipLevel:number, cubemapFace:UnityEngine.CubemapFace, depthSlice:number)
---@overload fun(color:UnityEngine.Rendering.RenderTargetIdentifier, depth:UnityEngine.Rendering.RenderTargetIdentifier)
---@overload fun(color:UnityEngine.Rendering.RenderTargetIdentifier, depth:UnityEngine.Rendering.RenderTargetIdentifier, mipLevel:number)
---@overload fun(color:UnityEngine.Rendering.RenderTargetIdentifier, depth:UnityEngine.Rendering.RenderTargetIdentifier, mipLevel:number, cubemapFace:UnityEngine.CubemapFace)
---@overload fun(color:UnityEngine.Rendering.RenderTargetIdentifier, depth:UnityEngine.Rendering.RenderTargetIdentifier, mipLevel:number, cubemapFace:UnityEngine.CubemapFace, depthSlice:number)
---@overload fun(color:UnityEngine.Rendering.RenderTargetIdentifier, colorLoadAction:UnityEngine.Rendering.RenderBufferLoadAction, colorStoreAction:UnityEngine.Rendering.RenderBufferStoreAction, depth:UnityEngine.Rendering.RenderTargetIdentifier, depthLoadAction:UnityEngine.Rendering.RenderBufferLoadAction, depthStoreAction:UnityEngine.Rendering.RenderBufferStoreAction)
---@overload fun(colors:UnityEngine.Rendering.RenderTargetIdentifier[], depth:UnityEngine.Rendering.RenderTargetIdentifier)
---@overload fun(binding:UnityEngine.Rendering.RenderTargetBinding)
---@param rt UnityEngine.Rendering.RenderTargetIdentifier
function m:SetRenderTarget(rt) end

---@virtual
function m:Dispose() end

function m:Release() end

---@overload fun():
---@param stage UnityEngine.Rendering.SynchronisationStage
---@return UnityEngine.Rendering.GPUFence
function m:CreateGPUFence(stage) end

---@overload fun(fence:UnityEngine.Rendering.GPUFence)
---@param fence UnityEngine.Rendering.GPUFence
---@param stage UnityEngine.Rendering.SynchronisationStage
function m:WaitOnGPUFence(fence, stage) end

---@overload fun(computeShader:UnityEngine.ComputeShader, name:string)
---@overload fun(computeShader:UnityEngine.ComputeShader, nameID:number, ...:number|number[])
---@overload fun(computeShader:UnityEngine.ComputeShader, nameID:number)
---@param computeShader UnityEngine.ComputeShader
---@param name string
---@param ... number|number[]
function m:SetComputeFloatParams(computeShader, name, ...) end

---@overload fun(computeShader:UnityEngine.ComputeShader, name:string)
---@overload fun(computeShader:UnityEngine.ComputeShader, nameID:number, ...:number|number[])
---@overload fun(computeShader:UnityEngine.ComputeShader, nameID:number)
---@param computeShader UnityEngine.ComputeShader
---@param name string
---@param ... number|number[]
function m:SetComputeIntParams(computeShader, name, ...) end

---@overload fun(computeShader:UnityEngine.ComputeShader, kernelIndex:number, nameID:number, rt:UnityEngine.Rendering.RenderTargetIdentifier)
---@overload fun(computeShader:UnityEngine.ComputeShader, kernelIndex:number, name:string, rt:UnityEngine.Rendering.RenderTargetIdentifier, mipLevel:number)
---@overload fun(computeShader:UnityEngine.ComputeShader, kernelIndex:number, nameID:number, rt:UnityEngine.Rendering.RenderTargetIdentifier, mipLevel:number)
---@param computeShader UnityEngine.ComputeShader
---@param kernelIndex number
---@param name string
---@param rt UnityEngine.Rendering.RenderTargetIdentifier
function m:SetComputeTextureParam(computeShader, kernelIndex, name, rt) end

---@overload fun(computeShader:UnityEngine.ComputeShader, kernelIndex:number, indirectBuffer:UnityEngine.ComputeBuffer, argsOffset:number)
---@param computeShader UnityEngine.ComputeShader
---@param kernelIndex number
---@param threadGroupsX number
---@param threadGroupsY number
---@param threadGroupsZ number
function m:DispatchCompute(computeShader, kernelIndex, threadGroupsX, threadGroupsY, threadGroupsZ) end

---@param rt UnityEngine.RenderTexture
function m:GenerateMips(rt) end

---@overload fun(rt:UnityEngine.RenderTexture)
---@param rt UnityEngine.RenderTexture
---@param target UnityEngine.RenderTexture
function m:ResolveAntiAliasedSurface(rt, target) end

---@overload fun(mesh:UnityEngine.Mesh, matrix:UnityEngine.Matrix4x4, material:UnityEngine.Material, submeshIndex:number, shaderPass:number)
---@overload fun(mesh:UnityEngine.Mesh, matrix:UnityEngine.Matrix4x4, material:UnityEngine.Material, submeshIndex:number)
---@overload fun(mesh:UnityEngine.Mesh, matrix:UnityEngine.Matrix4x4, material:UnityEngine.Material)
---@param mesh UnityEngine.Mesh
---@param matrix UnityEngine.Matrix4x4
---@param material UnityEngine.Material
---@param submeshIndex number
---@param shaderPass number
---@param properties UnityEngine.MaterialPropertyBlock
function m:DrawMesh(mesh, matrix, material, submeshIndex, shaderPass, properties) end

---@overload fun(renderer:UnityEngine.Renderer, material:UnityEngine.Material, submeshIndex:number)
---@overload fun(renderer:UnityEngine.Renderer, material:UnityEngine.Material)
---@param renderer UnityEngine.Renderer
---@param material UnityEngine.Material
---@param submeshIndex number
---@param shaderPass number
function m:DrawRenderer(renderer, material, submeshIndex, shaderPass) end

---@overload fun(matrix:UnityEngine.Matrix4x4, material:UnityEngine.Material, shaderPass:number, topology:UnityEngine.MeshTopology, vertexCount:number, instanceCount:number)
---@overload fun(matrix:UnityEngine.Matrix4x4, material:UnityEngine.Material, shaderPass:number, topology:UnityEngine.MeshTopology, vertexCount:number)
---@param matrix UnityEngine.Matrix4x4
---@param material UnityEngine.Material
---@param shaderPass number
---@param topology UnityEngine.MeshTopology
---@param vertexCount number
---@param instanceCount number
---@param properties UnityEngine.MaterialPropertyBlock
function m:DrawProcedural(matrix, material, shaderPass, topology, vertexCount, instanceCount, properties) end

---@overload fun(matrix:UnityEngine.Matrix4x4, material:UnityEngine.Material, shaderPass:number, topology:UnityEngine.MeshTopology, bufferWithArgs:UnityEngine.ComputeBuffer, argsOffset:number)
---@overload fun(matrix:UnityEngine.Matrix4x4, material:UnityEngine.Material, shaderPass:number, topology:UnityEngine.MeshTopology, bufferWithArgs:UnityEngine.ComputeBuffer)
---@param matrix UnityEngine.Matrix4x4
---@param material UnityEngine.Material
---@param shaderPass number
---@param topology UnityEngine.MeshTopology
---@param bufferWithArgs UnityEngine.ComputeBuffer
---@param argsOffset number
---@param properties UnityEngine.MaterialPropertyBlock
function m:DrawProceduralIndirect(matrix, material, shaderPass, topology, bufferWithArgs, argsOffset, properties) end

---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:number, material:UnityEngine.Material, shaderPass:number, matrices:UnityEngine.Matrix4x4[], count:number)
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:number, material:UnityEngine.Material, shaderPass:number, matrices:UnityEngine.Matrix4x4[])
---@param mesh UnityEngine.Mesh
---@param submeshIndex number
---@param material UnityEngine.Material
---@param shaderPass number
---@param matrices UnityEngine.Matrix4x4[]
---@param count number
---@param properties UnityEngine.MaterialPropertyBlock
function m:DrawMeshInstanced(mesh, submeshIndex, material, shaderPass, matrices, count, properties) end

---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:number, material:UnityEngine.Material, shaderPass:number, bufferWithArgs:UnityEngine.ComputeBuffer, argsOffset:number)
---@overload fun(mesh:UnityEngine.Mesh, submeshIndex:number, material:UnityEngine.Material, shaderPass:number, bufferWithArgs:UnityEngine.ComputeBuffer)
---@param mesh UnityEngine.Mesh
---@param submeshIndex number
---@param material UnityEngine.Material
---@param shaderPass number
---@param bufferWithArgs UnityEngine.ComputeBuffer
---@param argsOffset number
---@param properties UnityEngine.MaterialPropertyBlock
function m:DrawMeshInstancedIndirect(mesh, submeshIndex, material, shaderPass, bufferWithArgs, argsOffset, properties) end

---@overload fun(index:number, buffer:UnityEngine.ComputeBuffer, preserveCounterValue:boolean)
---@overload fun(index:number, buffer:UnityEngine.ComputeBuffer)
---@param index number
---@param rt UnityEngine.Rendering.RenderTargetIdentifier
function m:SetRandomWriteTarget(index, rt) end

---@overload fun(src:UnityEngine.Rendering.RenderTargetIdentifier, srcElement:number, dst:UnityEngine.Rendering.RenderTargetIdentifier, dstElement:number)
---@overload fun(src:UnityEngine.Rendering.RenderTargetIdentifier, srcElement:number, srcMip:number, dst:UnityEngine.Rendering.RenderTargetIdentifier, dstElement:number, dstMip:number)
---@overload fun(src:UnityEngine.Rendering.RenderTargetIdentifier, srcElement:number, srcMip:number, srcX:number, srcY:number, srcWidth:number, srcHeight:number, dst:UnityEngine.Rendering.RenderTargetIdentifier, dstElement:number, dstMip:number, dstX:number, dstY:number)
---@param src UnityEngine.Rendering.RenderTargetIdentifier
---@param dst UnityEngine.Rendering.RenderTargetIdentifier
function m:CopyTexture(src, dst) end

---@overload fun(source:UnityEngine.Texture, dest:UnityEngine.Rendering.RenderTargetIdentifier, scale:UnityEngine.Vector2, offset:UnityEngine.Vector2)
---@overload fun(source:UnityEngine.Texture, dest:UnityEngine.Rendering.RenderTargetIdentifier, mat:UnityEngine.Material)
---@overload fun(source:UnityEngine.Texture, dest:UnityEngine.Rendering.RenderTargetIdentifier, mat:UnityEngine.Material, pass:number)
---@overload fun(source:UnityEngine.Rendering.RenderTargetIdentifier, dest:UnityEngine.Rendering.RenderTargetIdentifier)
---@overload fun(source:UnityEngine.Rendering.RenderTargetIdentifier, dest:UnityEngine.Rendering.RenderTargetIdentifier, scale:UnityEngine.Vector2, offset:UnityEngine.Vector2)
---@overload fun(source:UnityEngine.Rendering.RenderTargetIdentifier, dest:UnityEngine.Rendering.RenderTargetIdentifier, mat:UnityEngine.Material)
---@overload fun(source:UnityEngine.Rendering.RenderTargetIdentifier, dest:UnityEngine.Rendering.RenderTargetIdentifier, mat:UnityEngine.Material, pass:number)
---@param source UnityEngine.Texture
---@param dest UnityEngine.Rendering.RenderTargetIdentifier
function m:Blit(source, dest) end

---@overload fun(nameID:number, value:UnityEngine.Rendering.RenderTargetIdentifier)
---@param name string
---@param value UnityEngine.Rendering.RenderTargetIdentifier
function m:SetGlobalTexture(name, value) end

---@param shadowmap UnityEngine.Rendering.RenderTargetIdentifier
---@param mode UnityEngine.Rendering.ShadowSamplingMode
function m:SetShadowSamplingMode(shadowmap, mode) end

---@param callback System.IntPtr
---@param eventID number
function m:IssuePluginEvent(callback, eventID) end

---@param callback System.IntPtr
---@param eventID number
---@param data System.IntPtr
function m:IssuePluginEventAndData(callback, eventID, data) end

---@param callback System.IntPtr
---@param command number
---@param source UnityEngine.Rendering.RenderTargetIdentifier
---@param dest UnityEngine.Rendering.RenderTargetIdentifier
---@param commandParam number
---@param commandFlags number
function m:IssuePluginCustomBlit(callback, command, source, dest, commandParam, commandFlags) end

---@param callback System.IntPtr
---@param targetTexture UnityEngine.Texture
---@param userData number
function m:IssuePluginCustomTextureUpdate(callback, targetTexture, userData) end

---@param callback System.IntPtr
---@param targetTexture UnityEngine.Texture
---@param userData number
function m:IssuePluginCustomTextureUpdateV1(callback, targetTexture, userData) end

---@param callback System.IntPtr
---@param targetTexture UnityEngine.Texture
---@param userData number
function m:IssuePluginCustomTextureUpdateV2(callback, targetTexture, userData) end

UnityEngine.Rendering.CommandBuffer = m
return m
