---@class TQ.GameObjectPool : System.Object
local m = {}

---@param instance UnityEngine.GameObject
function m:DestroyDelegate(instance) end

---@param arr TQ.GameObjectPoolEntity[]
---@param parent UnityEngine.Transform
---@return System.Collections.IEnumerator
function m:Init(arr, parent) end

---@overload fun(prefabId:number, onComplete:fun(t1:UnityEngine.Transform))
---@param poolId number
---@param prefab UnityEngine.Transform
---@param onComplete fun(obj:UnityEngine.Transform)
function m:Spawn(poolId, prefab, onComplete) end

---@overload fun(instance:UnityEngine.Transform)
---@param poolId number
---@param instance UnityEngine.Transform
function m:Despawn(poolId, instance) end

---@virtual
function m:Dispose() end

TQ.GameObjectPool = m
return m
