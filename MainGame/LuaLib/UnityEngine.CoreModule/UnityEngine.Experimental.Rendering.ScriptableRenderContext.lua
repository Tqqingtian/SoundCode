---@class UnityEngine.Experimental.Rendering.ScriptableRenderContext : System.ValueType
local m = {}

---@static
---@param _self System.IntPtr
---@param w number
---@param h number
---@param samples number
---@param colors UnityEngine.Experimental.Rendering.RenderPassAttachment[]
---@param depth UnityEngine.Experimental.Rendering.RenderPassAttachment
function m.BeginRenderPassInternal(_self, w, h, samples, colors, depth) end

---@static
---@param _self System.IntPtr
---@param colors UnityEngine.Experimental.Rendering.RenderPassAttachment[]
---@param inputs UnityEngine.Experimental.Rendering.RenderPassAttachment[]
---@param readOnlyDepth boolean
function m.BeginSubPassInternal(_self, colors, inputs, readOnlyDepth) end

---@static
---@param _self System.IntPtr
function m.EndRenderPassInternal(_self) end

---@static
---@param cullingCamera UnityEngine.Camera
function m.EmitWorldGeometryForSceneView(cullingCamera) end

function m:Submit() end

---@overload fun(renderers:UnityEngine.Experimental.Rendering.FilterResults, drawSettings:UnityEngine.Experimental.Rendering.DrawRendererSettings, filterSettings:UnityEngine.Experimental.Rendering.FilterRenderersSettings, stateBlock:UnityEngine.Experimental.Rendering.RenderStateBlock):
---@overload fun(renderers:UnityEngine.Experimental.Rendering.FilterResults, drawSettings:UnityEngine.Experimental.Rendering.DrawRendererSettings, filterSettings:UnityEngine.Experimental.Rendering.FilterRenderersSettings, stateMap:UnityEngine.Experimental.Rendering.RenderStateMapping[]):
---@param renderers UnityEngine.Experimental.Rendering.FilterResults
---@param drawSettings UnityEngine.Experimental.Rendering.DrawRendererSettings
---@param filterSettings UnityEngine.Experimental.Rendering.FilterRenderersSettings
---@return UnityEngine.Experimental.Rendering.DrawRendererSettings
function m:DrawRenderers(renderers, drawSettings, filterSettings) end

---@param settings UnityEngine.Experimental.Rendering.DrawShadowsSettings
---@return UnityEngine.Experimental.Rendering.DrawShadowsSettings
function m:DrawShadows(settings) end

---@param commandBuffer UnityEngine.Rendering.CommandBuffer
function m:ExecuteCommandBuffer(commandBuffer) end

---@param commandBuffer UnityEngine.Rendering.CommandBuffer
---@param queueType UnityEngine.Rendering.ComputeQueueType
function m:ExecuteCommandBufferAsync(commandBuffer, queueType) end

---@overload fun(camera:UnityEngine.Camera, stereoSetup:boolean)
---@param camera UnityEngine.Camera
function m:SetupCameraProperties(camera) end

---@param camera UnityEngine.Camera
function m:StereoEndRender(camera) end

---@param camera UnityEngine.Camera
function m:StartMultiEye(camera) end

---@param camera UnityEngine.Camera
function m:StopMultiEye(camera) end

---@param camera UnityEngine.Camera
function m:DrawSkybox(camera) end

UnityEngine.Experimental.Rendering.ScriptableRenderContext = m
return m
