---@class UnityEngine.IExposedPropertyTable : table
local m = {}

---@abstract
---@param id UnityEngine.PropertyName
---@param value UnityEngine.Object
function m:SetReferenceValue(id, value) end

---@abstract
---@param id UnityEngine.PropertyName
---@return UnityEngine.Object, System.Boolean
function m:GetReferenceValue(id) end

---@abstract
---@param id UnityEngine.PropertyName
function m:ClearReferenceValue(id) end

UnityEngine.IExposedPropertyTable = m
return m
