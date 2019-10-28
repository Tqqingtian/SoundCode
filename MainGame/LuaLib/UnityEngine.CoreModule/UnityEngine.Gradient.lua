---@class UnityEngine.Gradient : System.Object
---@field public colorKeys UnityEngine.GradientColorKey[]
---@field public alphaKeys UnityEngine.GradientAlphaKey[]
---@field public mode UnityEngine.GradientMode
local m = {}

---@param time number
---@return UnityEngine.Color
function m:Evaluate(time) end

---@param colorKeys UnityEngine.GradientColorKey[]
---@param alphaKeys UnityEngine.GradientAlphaKey[]
function m:SetKeys(colorKeys, alphaKeys) end

---@overload fun(other:UnityEngine.Gradient): @virtual
---@virtual
---@param o any
---@return boolean
function m:Equals(o) end

---@virtual
---@return number
function m:GetHashCode() end

UnityEngine.Gradient = m
return m
