---@class UnityEngine.Plane : System.ValueType
---@field public normal UnityEngine.Vector3
---@field public distance number
---@field public flipped UnityEngine.Plane
local m = {}

---@param inNormal UnityEngine.Vector3
---@param inPoint UnityEngine.Vector3
function m:SetNormalAndPosition(inNormal, inPoint) end

---@param a UnityEngine.Vector3
---@param b UnityEngine.Vector3
---@param c UnityEngine.Vector3
function m:Set3Points(a, b, c) end

function m:Flip() end

---@overload fun(plane:UnityEngine.Plane, translation:UnityEngine.Vector3): @static
---@param translation UnityEngine.Vector3
function m:Translate(translation) end

---@param point UnityEngine.Vector3
---@return UnityEngine.Vector3
function m:ClosestPointOnPlane(point) end

---@param point UnityEngine.Vector3
---@return number
function m:GetDistanceToPoint(point) end

---@param point UnityEngine.Vector3
---@return boolean
function m:GetSide(point) end

---@param inPt0 UnityEngine.Vector3
---@param inPt1 UnityEngine.Vector3
---@return boolean
function m:SameSide(inPt0, inPt1) end

---@param ray UnityEngine.Ray
---@return boolean, System.Single
function m:Raycast(ray) end

---@overload fun(format:string):
---@virtual
---@return string
function m:ToString() end

UnityEngine.Plane = m
return m
