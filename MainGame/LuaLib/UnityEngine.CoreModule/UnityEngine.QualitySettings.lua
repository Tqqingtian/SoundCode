---@class UnityEngine.QualitySettings : UnityEngine.Object
---@field public currentLevel UnityEngine.QualityLevel @static
---@field public pixelLightCount number @static
---@field public shadows UnityEngine.ShadowQuality @static
---@field public shadowProjection UnityEngine.ShadowProjection @static
---@field public shadowCascades number @static
---@field public shadowDistance number @static
---@field public shadowResolution UnityEngine.ShadowResolution @static
---@field public shadowmaskMode UnityEngine.ShadowmaskMode @static
---@field public shadowNearPlaneOffset number @static
---@field public shadowCascade2Split number @static
---@field public shadowCascade4Split UnityEngine.Vector3 @static
---@field public lodBias number @static
---@field public anisotropicFiltering UnityEngine.AnisotropicFiltering @static
---@field public masterTextureLimit number @static
---@field public maximumLODLevel number @static
---@field public particleRaycastBudget number @static
---@field public softParticles boolean @static
---@field public softVegetation boolean @static
---@field public vSyncCount number @static
---@field public antiAliasing number @static
---@field public asyncUploadTimeSlice number @static
---@field public asyncUploadBufferSize number @static
---@field public asyncUploadPersistentBuffer boolean @static
---@field public realtimeReflectionProbes boolean @static
---@field public billboardsFaceCameraPosition boolean @static
---@field public resolutionScalingFixedDPIFactor number @static
---@field public blendWeights UnityEngine.BlendWeights @static
---@field public streamingMipmapsActive boolean @static
---@field public streamingMipmapsMemoryBudget number @static
---@field public streamingMipmapsRenderersPerFrame number @static
---@field public streamingMipmapsMaxLevelReduction number @static
---@field public streamingMipmapsAddAllCameras boolean @static
---@field public streamingMipmapsMaxFileIORequests number @static
---@field public maxQueuedFrames number @static
---@field public names string[] @static
---@field public desiredColorSpace UnityEngine.ColorSpace @static
---@field public activeColorSpace UnityEngine.ColorSpace @static
local m = {}

---@overload fun() @static
---@static
---@param applyExpensiveChanges boolean
function m.IncreaseLevel(applyExpensiveChanges) end

---@overload fun() @static
---@static
---@param applyExpensiveChanges boolean
function m.DecreaseLevel(applyExpensiveChanges) end

---@overload fun(index:number, applyExpensiveChanges:boolean) @static
---@static
---@param index number
function m.SetQualityLevel(index) end

---@static
---@return number
function m.GetQualityLevel() end

UnityEngine.QualitySettings = m
return m
