---@class UnityEngine.SetupCoroutine : System.Object
local m = {}

---@static
---@param enumerator System.Collections.IEnumerator
---@param returnValueAddress System.IntPtr
function m.InvokeMoveNext(enumerator, returnValueAddress) end

---@static
---@param behaviour any
---@param name string
---@param variable any
---@return any
function m.InvokeMember(behaviour, name, variable) end

---@static
---@param klass System.Type
---@param name string
---@param variable any
---@return any
function m.InvokeStatic(klass, name, variable) end

UnityEngine.SetupCoroutine = m
return m
