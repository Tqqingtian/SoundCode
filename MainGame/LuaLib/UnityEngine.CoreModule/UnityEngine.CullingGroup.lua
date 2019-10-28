---@class UnityEngine.CullingGroup : System.Object
---@field public onStateChanged fun(sphere:UnityEngine.CullingGroupEvent)
---@field public enabled boolean
---@field public targetCamera UnityEngine.Camera
local m = {}

---@virtual
function m:Dispose() end

---@param array UnityEngine.BoundingSphere[]
function m:SetBoundingSpheres(array) end

---@param count number
function m:SetBoundingSphereCount(count) end

---@overload fun(index:number, myArray:any[], size:System.Int32): @static
---@param index number
function m:EraseSwapBack(index) end

---@overload fun(distanceIndex:number, result:number[], firstIndex:number):
---@overload fun(visible:boolean, distanceIndex:number, result:number[], firstIndex:number):
---@param visible boolean
---@param result number[]
---@param firstIndex number
---@return number
function m:QueryIndices(visible, result, firstIndex) end

---@param index number
---@return boolean
function m:IsVisible(index) end

---@param index number
---@return number
function m:GetDistance(index) end

---@param distances number[]
function m:SetBoundingDistances(distances) end

---@overload fun(transform:UnityEngine.Transform)
---@param point UnityEngine.Vector3
function m:SetDistanceReferencePoint(point) end

UnityEngine.CullingGroup = m
return m
