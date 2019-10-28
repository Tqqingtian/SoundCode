---@class TQ.PoolComponent : TQ.TQBaseComponent
---@field public LockedAssetBundle string[]
---@field public VarObjectInspectorDic table<System.Type, number>
---@field public ReleaseClassObjectInterval number
---@field public ReleaseResourceInterval number
---@field public ReleaseAssetInterval number
---@field public ShowAssetPool boolean
---@field public m_GameObjectPoolGroups TQ.GameObjectPoolEntity[]
---@field public PoolManager TQ.PoolManager
---@field public FontDic System.Collections.Generic.Dictionary_2_System_String_TQ_ResourceEntity_
local m = {}

---@param assetBundleName string
---@return boolean
function m:CheckAssetBundleIsLock(assetBundleName) end

---@param count number
function m:SetClassObjectResideCount(count) end

---@return any
function m:DequeueClassObject() end

---@param obj any
function m:EnqueueClassObject(obj) end

---@return TQ.VariableBase
function m:DequeueVarObject() end

---@param item TQ.VariableBase
function m:EnqueueVarObject(item) end

---@virtual
function m:Shutdown() end

---@virtual
function m:OnUpdate() end

---@overload fun(prefabId:number, onComplete:fun(t1:UnityEngine.Transform))
---@param poolId number
---@param prefab UnityEngine.Transform
---@param onComplete fun(obj:UnityEngine.Transform)
function m:GameObjectSpawn(poolId, prefab, onComplete) end

---@overload fun(instance:UnityEngine.Transform)
---@param poolId number
---@param instance UnityEngine.Transform
function m:GameObjectDespawn(poolId, instance) end

---@param instanceId number
---@param resourceEntity TQ.ResourceEntity
function m:RegisterInstanceResource(instanceId, resourceEntity) end

---@param instanceId number
function m:ReleaseInstanceResource(instanceId) end

TQ.PoolComponent = m
return m
