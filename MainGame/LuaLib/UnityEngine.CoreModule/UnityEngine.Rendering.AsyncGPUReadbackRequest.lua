---@class UnityEngine.Rendering.AsyncGPUReadbackRequest : System.ValueType
---@field public done boolean
---@field public hasError boolean
---@field public layerCount number
---@field public layerDataSize number
---@field public width number
---@field public height number
---@field public depth number
local m = {}

function m:Update() end

function m:WaitForCompletion() end

---@overload fun():
---@param layer number
---@return System.ValueType
function m:GetData(layer) end

UnityEngine.Rendering.AsyncGPUReadbackRequest = m
return m
