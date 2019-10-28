---@class UnityEngine.LineUtility : System.Object
local m = {}

---@overload fun(points:UnityEngine.Vector3[], tolerance:number, simplifiedPoints:UnityEngine.Vector3[]) @static
---@overload fun(points:UnityEngine.Vector2[], tolerance:number, pointsToKeep:number[]) @static
---@overload fun(points:UnityEngine.Vector2[], tolerance:number, simplifiedPoints:UnityEngine.Vector2[]) @static
---@static
---@param points UnityEngine.Vector3[]
---@param tolerance number
---@param pointsToKeep number[]
function m.Simplify(points, tolerance, pointsToKeep) end

UnityEngine.LineUtility = m
return m
