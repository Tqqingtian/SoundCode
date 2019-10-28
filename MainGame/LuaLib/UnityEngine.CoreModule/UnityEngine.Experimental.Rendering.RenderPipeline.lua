---@class UnityEngine.Experimental.Rendering.RenderPipeline : System.Object
---@field public disposed boolean
local m = {}

---@static
---@param value fun(obj:UnityEngine.Camera[])
function m.add_beginFrameRendering(value) end

---@static
---@param value fun(obj:UnityEngine.Camera[])
function m.remove_beginFrameRendering(value) end

---@static
---@param value fun(obj:UnityEngine.Camera)
function m.add_beginCameraRendering(value) end

---@static
---@param value fun(obj:UnityEngine.Camera)
function m.remove_beginCameraRendering(value) end

---@virtual
---@param renderContext UnityEngine.Experimental.Rendering.ScriptableRenderContext
---@param cameras UnityEngine.Camera[]
function m:Render(renderContext, cameras) end

---@virtual
function m:Dispose() end

---@static
---@param cameras UnityEngine.Camera[]
function m.BeginFrameRendering(cameras) end

---@static
---@param camera UnityEngine.Camera
function m.BeginCameraRendering(camera) end

UnityEngine.Experimental.Rendering.RenderPipeline = m
return m
