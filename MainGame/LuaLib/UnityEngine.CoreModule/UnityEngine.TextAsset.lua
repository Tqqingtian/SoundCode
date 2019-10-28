---@class UnityEngine.TextAsset : UnityEngine.Object
---@field public text string
---@field public bytes string
local m = {}

---@virtual
---@return string
function m:ToString() end

UnityEngine.TextAsset = m
return m
