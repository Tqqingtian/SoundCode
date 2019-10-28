---@class UnityEngine.Rendering.AsyncGPUReadback : System.Object
local m = {}

---@overload fun(src:UnityEngine.ComputeBuffer): @static
---@overload fun(src:UnityEngine.ComputeBuffer, size:number, offset:number, callback:fun(obj:UnityEngine.Rendering.AsyncGPUReadbackRequest)): @static
---@overload fun(src:UnityEngine.ComputeBuffer, size:number, offset:number): @static
---@overload fun(src:UnityEngine.Texture, mipIndex:number, callback:fun(obj:UnityEngine.Rendering.AsyncGPUReadbackRequest)): @static
---@overload fun(src:UnityEngine.Texture, mipIndex:number): @static
---@overload fun(src:UnityEngine.Texture): @static
---@overload fun(src:UnityEngine.Texture, mipIndex:number, dstFormat:UnityEngine.TextureFormat, callback:fun(obj:UnityEngine.Rendering.AsyncGPUReadbackRequest)): @static
---@overload fun(src:UnityEngine.Texture, mipIndex:number, dstFormat:UnityEngine.TextureFormat): @static
---@overload fun(src:UnityEngine.Texture, mipIndex:number, x:number, width:number, y:number, height:number, z:number, depth:number, callback:fun(obj:UnityEngine.Rendering.AsyncGPUReadbackRequest)): @static
---@overload fun(src:UnityEngine.Texture, mipIndex:number, x:number, width:number, y:number, height:number, z:number, depth:number): @static
---@overload fun(src:UnityEngine.Texture, mipIndex:number, x:number, width:number, y:number, height:number, z:number, depth:number, dstFormat:UnityEngine.TextureFormat, callback:fun(obj:UnityEngine.Rendering.AsyncGPUReadbackRequest)): @static
---@overload fun(src:UnityEngine.Texture, mipIndex:number, x:number, width:number, y:number, height:number, z:number, depth:number, dstFormat:UnityEngine.TextureFormat): @static
---@static
---@param src UnityEngine.ComputeBuffer
---@param callback fun(obj:UnityEngine.Rendering.AsyncGPUReadbackRequest)
---@return UnityEngine.Rendering.AsyncGPUReadbackRequest
function m.Request(src, callback) end

UnityEngine.Rendering.AsyncGPUReadback = m
return m
