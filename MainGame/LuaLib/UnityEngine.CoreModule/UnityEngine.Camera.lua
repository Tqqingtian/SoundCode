---@class UnityEngine.Camera : UnityEngine.Behaviour
---@field public onPreCull fun(cam:UnityEngine.Camera) @static
---@field public onPreRender fun(cam:UnityEngine.Camera) @static
---@field public onPostRender fun(cam:UnityEngine.Camera) @static
---@field public main UnityEngine.Camera @static
---@field public current UnityEngine.Camera @static
---@field public allCamerasCount number @static
---@field public allCameras UnityEngine.Camera[] @static
---@field public mainCamera UnityEngine.Camera @static
---@field public nearClipPlane number
---@field public farClipPlane number
---@field public fieldOfView number
---@field public renderingPath UnityEngine.RenderingPath
---@field public actualRenderingPath UnityEngine.RenderingPath
---@field public allowHDR boolean
---@field public allowMSAA boolean
---@field public allowDynamicResolution boolean
---@field public forceIntoRenderTexture boolean
---@field public orthographicSize number
---@field public orthographic boolean
---@field public opaqueSortMode UnityEngine.Rendering.OpaqueSortMode
---@field public transparencySortMode UnityEngine.TransparencySortMode
---@field public transparencySortAxis UnityEngine.Vector3
---@field public depth number
---@field public aspect number
---@field public velocity UnityEngine.Vector3
---@field public cullingMask number
---@field public eventMask number
---@field public layerCullSpherical boolean
---@field public cameraType UnityEngine.CameraType
---@field public layerCullDistances number[]
---@field public useOcclusionCulling boolean
---@field public cullingMatrix UnityEngine.Matrix4x4
---@field public backgroundColor UnityEngine.Color
---@field public clearFlags UnityEngine.CameraClearFlags
---@field public depthTextureMode UnityEngine.DepthTextureMode
---@field public clearStencilAfterLightingPass boolean
---@field public usePhysicalProperties boolean
---@field public sensorSize UnityEngine.Vector2
---@field public lensShift UnityEngine.Vector2
---@field public focalLength number
---@field public gateFit UnityEngine.Camera.GateFitMode
---@field public rect UnityEngine.Rect
---@field public pixelRect UnityEngine.Rect
---@field public pixelWidth number
---@field public pixelHeight number
---@field public scaledPixelWidth number
---@field public scaledPixelHeight number
---@field public targetTexture UnityEngine.RenderTexture
---@field public activeTexture UnityEngine.RenderTexture
---@field public targetDisplay number
---@field public cameraToWorldMatrix UnityEngine.Matrix4x4
---@field public worldToCameraMatrix UnityEngine.Matrix4x4
---@field public projectionMatrix UnityEngine.Matrix4x4
---@field public nonJitteredProjectionMatrix UnityEngine.Matrix4x4
---@field public useJitteredProjectionMatrixForTransparentRendering boolean
---@field public previousViewProjectionMatrix UnityEngine.Matrix4x4
---@field public scene UnityEngine.SceneManagement.Scene
---@field public stereoEnabled boolean
---@field public stereoSeparation number
---@field public stereoConvergence number
---@field public areVRStereoViewMatricesWithinSingleCullTolerance boolean
---@field public stereoTargetEye UnityEngine.StereoTargetEyeMask
---@field public stereoActiveEye UnityEngine.Camera.MonoOrStereoscopicEye
---@field public commandBufferCount number
---@field public isOrthoGraphic boolean
---@field public near number
---@field public far number
---@field public fov number
---@field public hdr boolean
---@field public stereoMirrorMode boolean
local m = {}

function m:Reset() end

function m:ResetTransparencySortSettings() end

function m:ResetAspect() end

function m:ResetCullingMatrix() end

---@param shader UnityEngine.Shader
---@param replacementTag string
function m:SetReplacementShader(shader, replacementTag) end

function m:ResetReplacementShader() end

---@overload fun(colorBuffer:UnityEngine.RenderBuffer[], depthBuffer:UnityEngine.RenderBuffer)
---@param colorBuffer UnityEngine.RenderBuffer
---@param depthBuffer UnityEngine.RenderBuffer
function m:SetTargetBuffers(colorBuffer, depthBuffer) end

function m:ResetWorldToCameraMatrix() end

function m:ResetProjectionMatrix() end

---@param clipPlane UnityEngine.Vector4
---@return UnityEngine.Matrix4x4
function m:CalculateObliqueMatrix(clipPlane) end

---@overload fun(position:UnityEngine.Vector3):
---@param position UnityEngine.Vector3
---@param eye UnityEngine.Camera.MonoOrStereoscopicEye
---@return UnityEngine.Vector3
function m:WorldToScreenPoint(position, eye) end

---@overload fun(position:UnityEngine.Vector3):
---@param position UnityEngine.Vector3
---@param eye UnityEngine.Camera.MonoOrStereoscopicEye
---@return UnityEngine.Vector3
function m:WorldToViewportPoint(position, eye) end

---@overload fun(position:UnityEngine.Vector3):
---@param position UnityEngine.Vector3
---@param eye UnityEngine.Camera.MonoOrStereoscopicEye
---@return UnityEngine.Vector3
function m:ViewportToWorldPoint(position, eye) end

---@overload fun(position:UnityEngine.Vector3):
---@param position UnityEngine.Vector3
---@param eye UnityEngine.Camera.MonoOrStereoscopicEye
---@return UnityEngine.Vector3
function m:ScreenToWorldPoint(position, eye) end

---@param position UnityEngine.Vector3
---@return UnityEngine.Vector3
function m:ScreenToViewportPoint(position) end

---@param position UnityEngine.Vector3
---@return UnityEngine.Vector3
function m:ViewportToScreenPoint(position) end

---@overload fun(pos:UnityEngine.Vector3):
---@param pos UnityEngine.Vector3
---@param eye UnityEngine.Camera.MonoOrStereoscopicEye
---@return UnityEngine.Ray
function m:ViewportPointToRay(pos, eye) end

---@overload fun(pos:UnityEngine.Vector3):
---@param pos UnityEngine.Vector3
---@param eye UnityEngine.Camera.MonoOrStereoscopicEye
---@return UnityEngine.Ray
function m:ScreenPointToRay(pos, eye) end

---@param viewport UnityEngine.Rect
---@param z number
---@param eye UnityEngine.Camera.MonoOrStereoscopicEye
---@param outCorners UnityEngine.Vector3[]
function m:CalculateFrustumCorners(viewport, z, eye, outCorners) end

---@overload fun(focalLength:number, sensorSize:UnityEngine.Vector2, lensShift:UnityEngine.Vector2, nearClip:number, farClip:number): @static
---@static
---@param focalLength number
---@param sensorSize UnityEngine.Vector2
---@param lensShift UnityEngine.Vector2
---@param nearClip number
---@param farClip number
---@param gateFitParameters UnityEngine.Camera.GateFitParameters
---@return UnityEngine.Matrix4x4
function m.CalculateProjectionMatrixFromPhysicalProperties(focalLength, sensorSize, lensShift, nearClip, farClip, gateFitParameters) end

---@static
---@param focalLength number
---@param sensorSize number
---@return number
function m.FocalLengthToFOV(focalLength, sensorSize) end

---@static
---@param fov number
---@param sensorSize number
---@return number
function m.FOVToFocalLength(fov, sensorSize) end

---@param eye UnityEngine.Camera.StereoscopicEye
---@return UnityEngine.Matrix4x4
function m:GetStereoNonJitteredProjectionMatrix(eye) end

---@param eye UnityEngine.Camera.StereoscopicEye
---@return UnityEngine.Matrix4x4
function m:GetStereoViewMatrix(eye) end

---@param eye UnityEngine.Camera.StereoscopicEye
function m:CopyStereoDeviceProjectionMatrixToNonJittered(eye) end

---@param eye UnityEngine.Camera.StereoscopicEye
---@return UnityEngine.Matrix4x4
function m:GetStereoProjectionMatrix(eye) end

---@param eye UnityEngine.Camera.StereoscopicEye
---@param matrix UnityEngine.Matrix4x4
function m:SetStereoProjectionMatrix(eye, matrix) end

function m:ResetStereoProjectionMatrices() end

---@param eye UnityEngine.Camera.StereoscopicEye
---@param matrix UnityEngine.Matrix4x4
function m:SetStereoViewMatrix(eye, matrix) end

function m:ResetStereoViewMatrices() end

---@static
---@param cameras UnityEngine.Camera[]
---@return number
function m.GetAllCameras(cameras) end

---@overload fun(cubemap:UnityEngine.Cubemap):
---@overload fun(cubemap:UnityEngine.RenderTexture, faceMask:number):
---@overload fun(cubemap:UnityEngine.RenderTexture):
---@overload fun(cubemap:UnityEngine.RenderTexture, faceMask:number, stereoEye:UnityEngine.Camera.MonoOrStereoscopicEye):
---@param cubemap UnityEngine.Cubemap
---@param faceMask number
---@return boolean
function m:RenderToCubemap(cubemap, faceMask) end

function m:Render() end

---@param shader UnityEngine.Shader
---@param replacementTag string
function m:RenderWithShader(shader, replacementTag) end

function m:RenderDontRestore() end

---@static
---@param cur UnityEngine.Camera
function m.SetupCurrent(cur) end

---@param other UnityEngine.Camera
function m:CopyFrom(other) end

---@param evt UnityEngine.Rendering.CameraEvent
function m:RemoveCommandBuffers(evt) end

function m:RemoveAllCommandBuffers() end

---@param evt UnityEngine.Rendering.CameraEvent
---@param buffer UnityEngine.Rendering.CommandBuffer
function m:AddCommandBuffer(evt, buffer) end

---@param evt UnityEngine.Rendering.CameraEvent
---@param buffer UnityEngine.Rendering.CommandBuffer
---@param queueType UnityEngine.Rendering.ComputeQueueType
function m:AddCommandBufferAsync(evt, buffer, queueType) end

---@param evt UnityEngine.Rendering.CameraEvent
---@param buffer UnityEngine.Rendering.CommandBuffer
function m:RemoveCommandBuffer(evt, buffer) end

---@param evt UnityEngine.Rendering.CameraEvent
---@return UnityEngine.Rendering.CommandBuffer[]
function m:GetCommandBuffers(evt) end

---@return number
function m:GetScreenWidth() end

---@return number
function m:GetScreenHeight() end

function m:DoClear() end

function m:ResetFieldOfView() end

---@param leftMatrix UnityEngine.Matrix4x4
---@param rightMatrix UnityEngine.Matrix4x4
function m:SetStereoViewMatrices(leftMatrix, rightMatrix) end

---@param leftMatrix UnityEngine.Matrix4x4
---@param rightMatrix UnityEngine.Matrix4x4
function m:SetStereoProjectionMatrices(leftMatrix, rightMatrix) end

---@return UnityEngine.Matrix4x4[]
function m:GetStereoViewMatrices() end

---@return UnityEngine.Matrix4x4[]
function m:GetStereoProjectionMatrices() end

UnityEngine.Camera = m
return m
