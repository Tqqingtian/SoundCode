---@class UnityEngine.Transform : UnityEngine.Component
---@field public position UnityEngine.Vector3
---@field public localPosition UnityEngine.Vector3
---@field public eulerAngles UnityEngine.Vector3
---@field public localEulerAngles UnityEngine.Vector3
---@field public right UnityEngine.Vector3
---@field public up UnityEngine.Vector3
---@field public forward UnityEngine.Vector3
---@field public rotation UnityEngine.Quaternion
---@field public localRotation UnityEngine.Quaternion
---@field public localScale UnityEngine.Vector3
---@field public parent UnityEngine.Transform
---@field public worldToLocalMatrix UnityEngine.Matrix4x4
---@field public localToWorldMatrix UnityEngine.Matrix4x4
---@field public root UnityEngine.Transform
---@field public childCount number
---@field public lossyScale UnityEngine.Vector3
---@field public hasChanged boolean
---@field public hierarchyCapacity number
---@field public hierarchyCount number
local m = {}

---@overload fun(parent:UnityEngine.Transform, worldPositionStays:boolean)
---@param p UnityEngine.Transform
function m:SetParent(p) end

---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
function m:SetPositionAndRotation(position, rotation) end

---@overload fun(translation:UnityEngine.Vector3)
---@overload fun(x:number, y:number, z:number, relativeTo:UnityEngine.Space)
---@overload fun(x:number, y:number, z:number)
---@overload fun(translation:UnityEngine.Vector3, relativeTo:UnityEngine.Transform)
---@overload fun(x:number, y:number, z:number, relativeTo:UnityEngine.Transform)
---@param translation UnityEngine.Vector3
---@param relativeTo UnityEngine.Space
function m:Translate(translation, relativeTo) end

---@overload fun(eulers:UnityEngine.Vector3)
---@overload fun(xAngle:number, yAngle:number, zAngle:number, relativeTo:UnityEngine.Space)
---@overload fun(xAngle:number, yAngle:number, zAngle:number)
---@overload fun(axis:UnityEngine.Vector3, angle:number, relativeTo:UnityEngine.Space)
---@overload fun(axis:UnityEngine.Vector3, angle:number)
---@param eulers UnityEngine.Vector3
---@param relativeTo UnityEngine.Space
function m:Rotate(eulers, relativeTo) end

---@overload fun(axis:UnityEngine.Vector3, angle:number)
---@param point UnityEngine.Vector3
---@param axis UnityEngine.Vector3
---@param angle number
function m:RotateAround(point, axis, angle) end

---@overload fun(target:UnityEngine.Transform)
---@overload fun(worldPosition:UnityEngine.Vector3, worldUp:UnityEngine.Vector3)
---@overload fun(worldPosition:UnityEngine.Vector3)
---@param target UnityEngine.Transform
---@param worldUp UnityEngine.Vector3
function m:LookAt(target, worldUp) end

---@overload fun(x:number, y:number, z:number):
---@param direction UnityEngine.Vector3
---@return UnityEngine.Vector3
function m:TransformDirection(direction) end

---@overload fun(x:number, y:number, z:number):
---@param direction UnityEngine.Vector3
---@return UnityEngine.Vector3
function m:InverseTransformDirection(direction) end

---@overload fun(x:number, y:number, z:number):
---@param vector UnityEngine.Vector3
---@return UnityEngine.Vector3
function m:TransformVector(vector) end

---@overload fun(x:number, y:number, z:number):
---@param vector UnityEngine.Vector3
---@return UnityEngine.Vector3
function m:InverseTransformVector(vector) end

---@overload fun(x:number, y:number, z:number):
---@param position UnityEngine.Vector3
---@return UnityEngine.Vector3
function m:TransformPoint(position) end

---@overload fun(x:number, y:number, z:number):
---@param position UnityEngine.Vector3
---@return UnityEngine.Vector3
function m:InverseTransformPoint(position) end

function m:DetachChildren() end

function m:SetAsFirstSibling() end

function m:SetAsLastSibling() end

---@param index number
function m:SetSiblingIndex(index) end

---@return number
function m:GetSiblingIndex() end

---@param n string
---@return UnityEngine.Transform
function m:Find(n) end

---@param parent UnityEngine.Transform
---@return boolean
function m:IsChildOf(parent) end

---@param n string
---@return UnityEngine.Transform
function m:FindChild(n) end

---@virtual
---@return System.Collections.IEnumerator
function m:GetEnumerator() end

---@param axis UnityEngine.Vector3
---@param angle number
function m:RotateAroundLocal(axis, angle) end

---@param index number
---@return UnityEngine.Transform
function m:GetChild(index) end

---@return number
function m:GetChildCount() end

UnityEngine.Transform = m
return m
