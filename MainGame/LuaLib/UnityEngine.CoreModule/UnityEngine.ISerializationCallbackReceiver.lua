---@class UnityEngine.ISerializationCallbackReceiver : table
local m = {}

---@abstract
function m:OnBeforeSerialize() end

---@abstract
function m:OnAfterDeserialize() end

UnityEngine.ISerializationCallbackReceiver = m
return m
