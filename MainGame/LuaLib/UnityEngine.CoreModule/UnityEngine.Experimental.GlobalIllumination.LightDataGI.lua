---@class UnityEngine.Experimental.GlobalIllumination.LightDataGI : System.ValueType
---@field public instanceID number
---@field public color UnityEngine.Experimental.GlobalIllumination.LinearColor
---@field public indirectColor UnityEngine.Experimental.GlobalIllumination.LinearColor
---@field public orientation UnityEngine.Quaternion
---@field public position UnityEngine.Vector3
---@field public range number
---@field public coneAngle number
---@field public innerConeAngle number
---@field public shape0 number
---@field public shape1 number
---@field public type UnityEngine.Experimental.GlobalIllumination.LightType
---@field public mode UnityEngine.Experimental.GlobalIllumination.LightMode
---@field public shadow number
---@field public falloff UnityEngine.Experimental.GlobalIllumination.FalloffType
local m = {}

---@overload fun(light:UnityEngine.Experimental.GlobalIllumination.PointLight):
---@overload fun(light:UnityEngine.Experimental.GlobalIllumination.SpotLight):
---@overload fun(light:UnityEngine.Experimental.GlobalIllumination.RectangleLight):
---@overload fun(light:UnityEngine.Experimental.GlobalIllumination.DiscLight):
---@param light UnityEngine.Experimental.GlobalIllumination.DirectionalLight
---@return UnityEngine.Experimental.GlobalIllumination.DirectionalLight
function m:Init(light) end

---@param lightInstanceID number
function m:InitNoBake(lightInstanceID) end

UnityEngine.Experimental.GlobalIllumination.LightDataGI = m
return m
