---@class UnityEngine.AndroidJavaObject : System.Object
local m = {}

---@virtual
function m:Dispose() end

---@overload fun(methodName:string)
---@overload fun(methodName:string, ...:any|any[]):
---@overload fun(methodName:string):
---@param methodName string
---@param ... any|any[]
function m:Call(methodName, ...) end

---@overload fun(methodName:string)
---@overload fun(methodName:string, ...:any|any[]):
---@overload fun(methodName:string):
---@param methodName string
---@param ... any|any[]
function m:CallStatic(methodName, ...) end

---@param fieldName string
---@return any
function m:Get(fieldName) end

---@param fieldName string
---@param val any
function m:Set(fieldName, val) end

---@param fieldName string
---@return any
function m:GetStatic(fieldName) end

---@param fieldName string
---@param val any
function m:SetStatic(fieldName, val) end

---@return System.IntPtr
function m:GetRawObject() end

---@return System.IntPtr
function m:GetRawClass() end

UnityEngine.AndroidJavaObject = m
return m
