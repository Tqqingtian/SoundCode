---@class UnityEngine.Experimental.Rendering.RenderPass : System.Object
---@field public colorAttachments UnityEngine.Experimental.Rendering.RenderPassAttachment[]
---@field public depthAttachment UnityEngine.Experimental.Rendering.RenderPassAttachment
---@field public width number
---@field public height number
---@field public sampleCount number
---@field public context UnityEngine.Experimental.Rendering.ScriptableRenderContext
local m = {}

---@virtual
function m:Dispose() end

UnityEngine.Experimental.Rendering.RenderPass = m
return m
