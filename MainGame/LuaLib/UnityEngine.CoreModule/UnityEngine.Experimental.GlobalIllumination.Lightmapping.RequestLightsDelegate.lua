---@class UnityEngine.Experimental.GlobalIllumination.Lightmapping.RequestLightsDelegate : System.MulticastDelegate
local m = {}

---@virtual
---@param requests UnityEngine.Light[]
---@param lightsOutput Unity.Collections.NativeArray_1_UnityEngine_Experimental_GlobalIllumination_LightDataGI_
function m:Invoke(requests, lightsOutput) end

---@virtual
---@param requests UnityEngine.Light[]
---@param lightsOutput Unity.Collections.NativeArray_1_UnityEngine_Experimental_GlobalIllumination_LightDataGI_
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(requests, lightsOutput, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

UnityEngine.Experimental.GlobalIllumination.Lightmapping.RequestLightsDelegate = m
return m
