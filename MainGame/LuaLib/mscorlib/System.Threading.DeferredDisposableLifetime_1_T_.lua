---@class System.Threading.DeferredDisposableLifetime_1_T_ : System.ValueType
local m = {}

---@param obj any
---@return boolean
function m:AddRef(obj) end

---@param obj any
function m:Release(obj) end

---@param obj any
function m:Dispose(obj) end

System.Threading.DeferredDisposableLifetime_1_T_ = m
return m
