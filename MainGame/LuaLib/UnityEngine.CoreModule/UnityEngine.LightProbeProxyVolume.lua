---@class UnityEngine.LightProbeProxyVolume : UnityEngine.Behaviour
---@field public isFeatureSupported boolean @static
---@field public boundsGlobal UnityEngine.Bounds
---@field public sizeCustom UnityEngine.Vector3
---@field public originCustom UnityEngine.Vector3
---@field public probeDensity number
---@field public gridResolutionX number
---@field public gridResolutionY number
---@field public gridResolutionZ number
---@field public boundingBoxMode UnityEngine.LightProbeProxyVolume.BoundingBoxMode
---@field public resolutionMode UnityEngine.LightProbeProxyVolume.ResolutionMode
---@field public probePositionMode UnityEngine.LightProbeProxyVolume.ProbePositionMode
---@field public refreshMode UnityEngine.LightProbeProxyVolume.RefreshMode
---@field public qualityMode UnityEngine.LightProbeProxyVolume.QualityMode
local m = {}

function m:Update() end

UnityEngine.LightProbeProxyVolume = m
return m
