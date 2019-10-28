---@class UnityEngine.Events.PersistentCallGroup : System.Object
---@field public Count number
local m = {}

---@param index number
---@return UnityEngine.Events.PersistentCall
function m:GetListener(index) end

---@return System.Collections.Generic.IEnumerable_1_UnityEngine_Events_PersistentCall_
function m:GetListeners() end

---@overload fun(call:UnityEngine.Events.PersistentCall)
function m:AddListener() end

---@param index number
function m:RemoveListener(index) end

function m:Clear() end

---@param index number
---@param targetObj UnityEngine.Object
---@param methodName string
function m:RegisterEventPersistentListener(index, targetObj, methodName) end

---@param index number
---@param targetObj UnityEngine.Object
---@param methodName string
function m:RegisterVoidPersistentListener(index, targetObj, methodName) end

---@param index number
---@param targetObj UnityEngine.Object
---@param argument UnityEngine.Object
---@param methodName string
function m:RegisterObjectPersistentListener(index, targetObj, argument, methodName) end

---@param index number
---@param targetObj UnityEngine.Object
---@param argument number
---@param methodName string
function m:RegisterIntPersistentListener(index, targetObj, argument, methodName) end

---@param index number
---@param targetObj UnityEngine.Object
---@param argument number
---@param methodName string
function m:RegisterFloatPersistentListener(index, targetObj, argument, methodName) end

---@param index number
---@param targetObj UnityEngine.Object
---@param argument string
---@param methodName string
function m:RegisterStringPersistentListener(index, targetObj, argument, methodName) end

---@param index number
---@param targetObj UnityEngine.Object
---@param argument boolean
---@param methodName string
function m:RegisterBoolPersistentListener(index, targetObj, argument, methodName) end

---@param index number
function m:UnregisterPersistentListener(index) end

---@param target UnityEngine.Object
---@param methodName string
function m:RemoveListeners(target, methodName) end

---@param invokableList UnityEngine.Events.InvokableCallList
---@param unityEventBase UnityEngine.Events.UnityEventBase
function m:Initialize(invokableList, unityEventBase) end

UnityEngine.Events.PersistentCallGroup = m
return m
