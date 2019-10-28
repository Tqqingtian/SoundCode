---@class UnityEngine.Experimental.GlobalIllumination.Lightmapping : System.Object
local m = {}

---@static
---@param del fun(requests:UnityEngine.Light[], lightsOutput:Unity.Collections.NativeArray_1_UnityEngine_Experimental_GlobalIllumination_LightDataGI_)
function m.SetDelegate(del) end

---@static
---@return fun(requests:UnityEngine.Light[], lightsOutput:Unity.Collections.NativeArray_1_UnityEngine_Experimental_GlobalIllumination_LightDataGI_)
function m.GetDelegate() end

---@static
function m.ResetDelegate() end

UnityEngine.Experimental.GlobalIllumination.Lightmapping = m
return m
