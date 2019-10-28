---@class UnityEngine.Light : UnityEngine.Behaviour
---@field public pixelLightCount number @static
---@field public type UnityEngine.LightType
---@field public spotAngle number
---@field public color UnityEngine.Color
---@field public colorTemperature number
---@field public intensity number
---@field public bounceIntensity number
---@field public shadowCustomResolution number
---@field public shadowBias number
---@field public shadowNormalBias number
---@field public shadowNearPlane number
---@field public range number
---@field public flare UnityEngine.Flare
---@field public bakingOutput UnityEngine.LightBakingOutput
---@field public cullingMask number
---@field public lightShadowCasterMode UnityEngine.LightShadowCasterMode
---@field public shadowRadius number
---@field public shadowAngle number
---@field public shadows UnityEngine.LightShadows
---@field public shadowStrength number
---@field public shadowResolution UnityEngine.Rendering.LightShadowResolution
---@field public shadowSoftness number
---@field public shadowSoftnessFade number
---@field public layerShadowCullDistances number[]
---@field public cookieSize number
---@field public cookie UnityEngine.Texture
---@field public renderMode UnityEngine.LightRenderMode
---@field public bakedIndex number
---@field public areaSize UnityEngine.Vector2
---@field public lightmapBakeType UnityEngine.LightmapBakeType
---@field public commandBufferCount number
---@field public shadowConstantBias number
---@field public shadowObjectSizeBias number
---@field public attenuate boolean
---@field public lightmappingMode UnityEngine.LightmappingMode
---@field public isBaked boolean
---@field public alreadyLightmapped boolean
local m = {}

function m:Reset() end

function m:SetLightDirty() end

---@overload fun(evt:UnityEngine.Rendering.LightEvent, buffer:UnityEngine.Rendering.CommandBuffer, shadowPassMask:UnityEngine.Rendering.ShadowMapPass)
---@param evt UnityEngine.Rendering.LightEvent
---@param buffer UnityEngine.Rendering.CommandBuffer
function m:AddCommandBuffer(evt, buffer) end

---@overload fun(evt:UnityEngine.Rendering.LightEvent, buffer:UnityEngine.Rendering.CommandBuffer, shadowPassMask:UnityEngine.Rendering.ShadowMapPass, queueType:UnityEngine.Rendering.ComputeQueueType)
---@param evt UnityEngine.Rendering.LightEvent
---@param buffer UnityEngine.Rendering.CommandBuffer
---@param queueType UnityEngine.Rendering.ComputeQueueType
function m:AddCommandBufferAsync(evt, buffer, queueType) end

---@param evt UnityEngine.Rendering.LightEvent
---@param buffer UnityEngine.Rendering.CommandBuffer
function m:RemoveCommandBuffer(evt, buffer) end

---@param evt UnityEngine.Rendering.LightEvent
function m:RemoveCommandBuffers(evt) end

function m:RemoveAllCommandBuffers() end

---@param evt UnityEngine.Rendering.LightEvent
---@return UnityEngine.Rendering.CommandBuffer[]
function m:GetCommandBuffers(evt) end

---@static
---@param type UnityEngine.LightType
---@param layer number
---@return UnityEngine.Light[]
function m.GetLights(type, layer) end

UnityEngine.Light = m
return m
