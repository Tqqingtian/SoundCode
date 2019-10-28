---@class UnityEngine.AndroidJavaProxy : System.Object
---@field public javaInterface UnityEngine.AndroidJavaClass
local m = {}

---@overload fun(methodName:string, javaArgs:UnityEngine.AndroidJavaObject[]): @virtual
---@virtual
---@param methodName string
---@param args any[]
---@return UnityEngine.AndroidJavaObject
function m:Invoke(methodName, args) end

---@virtual
---@param obj UnityEngine.AndroidJavaObject
---@return boolean
function m:equals(obj) end

---@virtual
---@return number
function m:hashCode() end

---@virtual
---@return string
function m:toString() end

UnityEngine.AndroidJavaProxy = m
return m
