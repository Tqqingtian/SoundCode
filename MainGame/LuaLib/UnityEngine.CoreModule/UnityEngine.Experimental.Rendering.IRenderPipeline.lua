---@class UnityEngine.Experimental.Rendering.IRenderPipeline : table
---@field public disposed boolean
local m = {}

---@abstract
---@param renderContext UnityEngine.Experimental.Rendering.ScriptableRenderContext
---@param cameras UnityEngine.Camera[]
function m:Render(renderContext, cameras) end

UnityEngine.Experimental.Rendering.IRenderPipeline = m
return m
