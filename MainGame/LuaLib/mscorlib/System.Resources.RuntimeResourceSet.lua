---@class System.Resources.RuntimeResourceSet : System.Resources.ResourceSet
local m = {}

---@virtual
---@return System.Collections.IDictionaryEnumerator
function m:GetEnumerator() end

---@overload fun(key:string, ignoreCase:boolean): @virtual
---@virtual
---@param key string
---@return string
function m:GetString(key) end

---@overload fun(key:string, ignoreCase:boolean): @virtual
---@virtual
---@param key string
---@return any
function m:GetObject(key) end

System.Resources.RuntimeResourceSet = m
return m
