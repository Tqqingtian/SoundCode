---@class UnityEngine.Experimental.GlobalIllumination.LinearColor : System.ValueType
---@field public red number
---@field public green number
---@field public blue number
---@field public intensity number
local m = {}

---@static
---@param color UnityEngine.Color
---@param intensity number
---@return UnityEngine.Experimental.GlobalIllumination.LinearColor
function m.Convert(color, intensity) end

---@static
---@return UnityEngine.Experimental.GlobalIllumination.LinearColor
function m.Black() end

UnityEngine.Experimental.GlobalIllumination.LinearColor = m
return m
