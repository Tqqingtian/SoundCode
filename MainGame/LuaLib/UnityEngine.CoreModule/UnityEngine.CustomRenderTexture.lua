---@class UnityEngine.CustomRenderTexture : UnityEngine.RenderTexture
---@field public material UnityEngine.Material
---@field public initializationMaterial UnityEngine.Material
---@field public initializationTexture UnityEngine.Texture
---@field public initializationSource UnityEngine.CustomRenderTextureInitializationSource
---@field public initializationColor UnityEngine.Color
---@field public updateMode UnityEngine.CustomRenderTextureUpdateMode
---@field public initializationMode UnityEngine.CustomRenderTextureUpdateMode
---@field public updateZoneSpace UnityEngine.CustomRenderTextureUpdateZoneSpace
---@field public shaderPass number
---@field public cubemapFaceMask number
---@field public doubleBuffered boolean
---@field public wrapUpdateZones boolean
local m = {}

---@overload fun()
---@param count number
function m:Update(count) end

function m:Initialize() end

function m:ClearUpdateZones() end

---@param updateZones UnityEngine.CustomRenderTextureUpdateZone[]
function m:GetUpdateZones(updateZones) end

---@param updateZones UnityEngine.CustomRenderTextureUpdateZone[]
function m:SetUpdateZones(updateZones) end

UnityEngine.CustomRenderTexture = m
return m
