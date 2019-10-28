---@class UnityEngine.Experimental.GlobalIllumination.LightmapperUtils : System.Object
local m = {}

---@overload fun(l:UnityEngine.Light, dir:UnityEngine.Experimental.GlobalIllumination.DirectionalLight): @static
---@overload fun(l:UnityEngine.Light, point:UnityEngine.Experimental.GlobalIllumination.PointLight): @static
---@overload fun(l:UnityEngine.Light, spot:UnityEngine.Experimental.GlobalIllumination.SpotLight): @static
---@overload fun(l:UnityEngine.Light, rect:UnityEngine.Experimental.GlobalIllumination.RectangleLight): @static
---@overload fun(l:UnityEngine.Light, disc:UnityEngine.Experimental.GlobalIllumination.DiscLight): @static
---@static
---@param baketype UnityEngine.LightmapBakeType
---@return UnityEngine.Experimental.GlobalIllumination.LightMode
function m.Extract(baketype) end

---@static
---@param l UnityEngine.Light
---@return UnityEngine.Experimental.GlobalIllumination.LinearColor
function m.ExtractIndirect(l) end

---@static
---@param l UnityEngine.Light
---@return number
function m.ExtractInnerCone(l) end

UnityEngine.Experimental.GlobalIllumination.LightmapperUtils = m
return m
