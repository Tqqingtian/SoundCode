---@class System.Collections.Concurrent.ConcurrentDictionary_2_TKey_TValue_ : System.Object
---@field public Item any
---@field public Count number
---@field public IsEmpty boolean
---@field public Keys any
---@field public Values any
local m = {}

---@param key any
---@param value any
---@return boolean
function m:TryAdd(key, value) end

---@virtual
---@param key any
---@return boolean
function m:ContainsKey(key) end

---@param key any
---@return boolean, any
function m:TryRemove(key) end

---@virtual
---@param key any
---@return boolean, any
function m:TryGetValue(key) end

---@param key any
---@param newValue any
---@param comparisonValue any
---@return boolean
function m:TryUpdate(key, newValue, comparisonValue) end

---@virtual
function m:Clear() end

---@return System.ValueType[]
function m:ToArray() end

---@virtual
---@return any
function m:GetEnumerator() end

---@overload fun(key:any, valueFactory:fun(arg1:any, arg2:any):, factoryArgument:any):
---@overload fun(key:any, value:any):
---@param key any
---@param valueFactory fun(arg:any):
---@return any
function m:GetOrAdd(key, valueFactory) end

---@overload fun(key:any, addValueFactory:fun(arg:any):, updateValueFactory:fun(arg1:any, arg2:any):):
---@overload fun(key:any, addValue:any, updateValueFactory:fun(arg1:any, arg2:any):):
---@param key any
---@param addValueFactory fun(arg1:any, arg2:any):
---@param updateValueFactory fun(arg1:any, arg2:any, arg3:any):
---@param factoryArgument any
---@return any
function m:AddOrUpdate(key, addValueFactory, updateValueFactory, factoryArgument) end

System.Collections.Concurrent.ConcurrentDictionary_2_TKey_TValue_ = m
return m
