---@class UnityEngine.Random : System.Object
---@field public seed number @static
---@field public state UnityEngine.Random.State @static
---@field public value number @static
---@field public insideUnitSphere UnityEngine.Vector3 @static
---@field public insideUnitCircle UnityEngine.Vector2 @static
---@field public onUnitSphere UnityEngine.Vector3 @static
---@field public rotation UnityEngine.Quaternion @static
---@field public rotationUniform UnityEngine.Quaternion @static
local m = {}

---@static
---@param seed number
function m.InitState(seed) end

---@overload fun(min:number, max:number): @static
---@static
---@param min number
---@param max number
---@return number
function m.Range(min, max) end

---@overload fun(min:number, max:number): @static
---@static
---@param min number
---@param max number
---@return number
function m.RandomRange(min, max) end

---@overload fun(hueMin:number, hueMax:number): @static
---@overload fun(hueMin:number, hueMax:number, saturationMin:number, saturationMax:number): @static
---@overload fun(hueMin:number, hueMax:number, saturationMin:number, saturationMax:number, valueMin:number, valueMax:number): @static
---@overload fun(hueMin:number, hueMax:number, saturationMin:number, saturationMax:number, valueMin:number, valueMax:number, alphaMin:number, alphaMax:number): @static
---@static
---@return UnityEngine.Color
function m.ColorHSV() end

UnityEngine.Random = m
return m
