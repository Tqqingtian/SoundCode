---@class XLuaTest.Vector3Param : System.MulticastDelegate
local m = {}

---@virtual
---@param p UnityEngine.Vector3
---@return UnityEngine.Vector3
function m:Invoke(p) end

---@virtual
---@param p UnityEngine.Vector3
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(p, callback, object) end

---@virtual
---@param result System.IAsyncResult
---@return UnityEngine.Vector3
function m:EndInvoke(result) end

XLuaTest.Vector3Param = m
return m
