---@class System.Runtime.CompilerServices.ConditionalWeakTable_2_TKey_TValue_ : System.Object
local m = {}

---@param key any
---@param value any
function m:Add(key, value) end

---@param key any
---@return boolean
function m:Remove(key) end

---@param key any
---@return boolean, any
function m:TryGetValue(key) end

---@param key any
---@return any
function m:GetOrCreateValue(key) end

---@param key any
---@param createValueCallback fun(key:any):
---@return any
function m:GetValue(key, createValueCallback) end

System.Runtime.CompilerServices.ConditionalWeakTable_2_TKey_TValue_ = m
return m
