---@class UnityEngine.Experimental.Rendering.RenderPassAttachment : UnityEngine.Object
---@field public loadAction UnityEngine.Rendering.RenderBufferLoadAction
---@field public storeAction UnityEngine.Rendering.RenderBufferStoreAction
---@field public format UnityEngine.RenderTextureFormat
---@field public clearColor UnityEngine.Color
---@field public clearDepth number
---@field public clearStencil number
local m = {}

---@param tgt UnityEngine.Rendering.RenderTargetIdentifier
---@param loadExistingContents boolean
---@param storeResults boolean
function m:BindSurface(tgt, loadExistingContents, storeResults) end

---@param tgt UnityEngine.Rendering.RenderTargetIdentifier
function m:BindResolveSurface(tgt) end

---@overload fun(clearCol:UnityEngine.Color, clearDep:number)
---@overload fun(clearCol:UnityEngine.Color)
---@param clearCol UnityEngine.Color
---@param clearDep number
---@param clearStenc number
function m:Clear(clearCol, clearDep, clearStenc) end

---@static
---@param self UnityEngine.Experimental.Rendering.RenderPassAttachment
function m.Internal_CreateAttachment(self) end

UnityEngine.Experimental.Rendering.RenderPassAttachment = m
return m
