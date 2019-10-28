---@class InstanceHandlerDelegateExample : UnityEngine.MonoBehaviour
local m = {}

---@overload fun(prefab:UnityEngine.GameObject, pos:UnityEngine.Vector3, rot:UnityEngine.Quaternion):
---@param prefab UnityEngine.GameObject
---@param pos UnityEngine.Vector3
---@param rot UnityEngine.Quaternion
---@param ressoursEntity any
---@return UnityEngine.GameObject
function m:InstantiateDelegate(prefab, pos, rot, ressoursEntity) end

---@param instance UnityEngine.GameObject
function m:DestroyDelegate(instance) end

---@param prefab UnityEngine.GameObject
---@param pos UnityEngine.Vector3
---@param rot UnityEngine.Quaternion
---@return UnityEngine.GameObject
function m:InstantiateDelegateForShapesPool(prefab, pos, rot) end

InstanceHandlerDelegateExample = m
return m
