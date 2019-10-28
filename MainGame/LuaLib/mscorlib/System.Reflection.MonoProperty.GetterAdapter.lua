---@class System.Reflection.MonoProperty.GetterAdapter : System.MulticastDelegate
local m = {}

---@virtual
---@param _this any
---@return any
function m:Invoke(_this) end

---@virtual
---@param _this any
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(_this, callback, object) end

---@virtual
---@param result System.IAsyncResult
---@return any
function m:EndInvoke(result) end

System.Reflection.MonoProperty.GetterAdapter = m
return m
