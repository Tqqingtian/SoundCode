---@class UnityEngine.ScalableBufferManager : System.Object
---@field public widthScaleFactor number @static
---@field public heightScaleFactor number @static
local m = {}

---@static
---@param widthScale number
---@param heightScale number
function m.ResizeBuffers(widthScale, heightScale) end

UnityEngine.ScalableBufferManager = m
return m
