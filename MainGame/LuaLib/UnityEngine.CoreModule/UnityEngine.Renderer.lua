---@class UnityEngine.Renderer : UnityEngine.Component
---@field public lightmapTilingOffset UnityEngine.Vector4
---@field public lightProbeAnchor UnityEngine.Transform
---@field public castShadows boolean
---@field public motionVectors boolean
---@field public useLightProbes boolean
---@field public bounds UnityEngine.Bounds
---@field public enabled boolean
---@field public isVisible boolean
---@field public shadowCastingMode UnityEngine.Rendering.ShadowCastingMode
---@field public receiveShadows boolean
---@field public motionVectorGenerationMode UnityEngine.MotionVectorGenerationMode
---@field public lightProbeUsage UnityEngine.Rendering.LightProbeUsage
---@field public reflectionProbeUsage UnityEngine.Rendering.ReflectionProbeUsage
---@field public renderingLayerMask number
---@field public rendererPriority number
---@field public sortingLayerName string
---@field public sortingLayerID number
---@field public sortingOrder number
---@field public allowOcclusionWhenDynamic boolean
---@field public isPartOfStaticBatch boolean
---@field public worldToLocalMatrix UnityEngine.Matrix4x4
---@field public localToWorldMatrix UnityEngine.Matrix4x4
---@field public lightProbeProxyVolumeOverride UnityEngine.GameObject
---@field public probeAnchor UnityEngine.Transform
---@field public lightmapIndex number
---@field public realtimeLightmapIndex number
---@field public lightmapScaleOffset UnityEngine.Vector4
---@field public realtimeLightmapScaleOffset UnityEngine.Vector4
---@field public materials UnityEngine.Material[]
---@field public material UnityEngine.Material
---@field public sharedMaterial UnityEngine.Material
---@field public sharedMaterials UnityEngine.Material[]
local m = {}

---@return boolean
function m:HasPropertyBlock() end

---@overload fun(properties:UnityEngine.MaterialPropertyBlock, materialIndex:number)
---@param properties UnityEngine.MaterialPropertyBlock
function m:SetPropertyBlock(properties) end

---@overload fun(properties:UnityEngine.MaterialPropertyBlock, materialIndex:number)
---@param properties UnityEngine.MaterialPropertyBlock
function m:GetPropertyBlock(properties) end

---@param m UnityEngine.Material[]
function m:GetMaterials(m) end

---@param m UnityEngine.Material[]
function m:GetSharedMaterials(m) end

---@param result UnityEngine.Rendering.ReflectionProbeBlendInfo[]
function m:GetClosestReflectionProbes(result) end

---@extension
function m.UpdateGIMaterials() end

UnityEngine.Renderer = m
return m
