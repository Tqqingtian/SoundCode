---@class UnityEngine.MonoBehaviour : UnityEngine.Behaviour
---@field public useGUILayout boolean
---@field public runInEditMode boolean
local m = {}

---@overload fun(methodName:string):
---@return boolean
function m:IsInvoking() end

---@overload fun(methodName:string)
function m:CancelInvoke() end

---@param methodName string
---@param time number
function m:Invoke(methodName, time) end

---@param methodName string
---@param time number
---@param repeatRate number
function m:InvokeRepeating(methodName, time, repeatRate) end

---@overload fun(methodName:string, value:any):
---@overload fun(routine:System.Collections.IEnumerator):
---@param methodName string
---@return UnityEngine.Coroutine
function m:StartCoroutine(methodName) end

---@param routine System.Collections.IEnumerator
---@return UnityEngine.Coroutine
function m:StartCoroutine_Auto(routine) end

---@overload fun(routine:UnityEngine.Coroutine)
---@overload fun(methodName:string)
---@param routine System.Collections.IEnumerator
function m:StopCoroutine(routine) end

function m:StopAllCoroutines() end

---@static
---@param message any
function m.print(message) end

UnityEngine.MonoBehaviour = m
return m
