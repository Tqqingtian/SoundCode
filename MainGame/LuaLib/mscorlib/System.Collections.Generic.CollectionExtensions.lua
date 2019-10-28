---@class System.Collections.Generic.CollectionExtensions : System.Object
local m = {}

---@overload fun(dictionary:any, key:any, defaultValue:any): @static
---@static
---@param dictionary any
---@param key any
---@return any
function m.GetValueOrDefault(dictionary, key) end

---@static
---@param dictionary table<any, any>
---@param key any
---@param value any
---@return boolean
function m.TryAdd(dictionary, key, value) end

---@static
---@param dictionary table<any, any>
---@param key any
---@return boolean, any
function m.Remove(dictionary, key) end

System.Collections.Generic.CollectionExtensions = m
return m
