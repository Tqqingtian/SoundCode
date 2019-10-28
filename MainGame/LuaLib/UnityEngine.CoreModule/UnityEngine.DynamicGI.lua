---@class UnityEngine.DynamicGI : System.Object
---@field public indirectScale number @static
---@field public updateThreshold number @static
---@field public materialUpdateTimeSlice number @static
---@field public synchronousMode boolean @static
---@field public isConverged boolean @static
local m = {}

---@static
---@param renderer UnityEngine.Renderer
---@param color UnityEngine.Color
function m.SetEmissive(renderer, color) end

---@static
---@param input number[]
function m.SetEnvironmentData(input) end

---@static
function m.UpdateEnvironment() end

---@overload fun(renderer:UnityEngine.Object) @static
---@overload fun(renderer:UnityEngine.Object, x:number, y:number, width:number, height:number) @static
---@static
---@param renderer UnityEngine.Renderer
function m.UpdateMaterials(renderer) end

UnityEngine.DynamicGI = m
return m
