---@class UnityEngine.PropertyNameUtils : System.Object
local m = {}

---@static
---@param name string
---@return UnityEngine.PropertyName
function m.PropertyNameFromString(name) end

---@static
---@param propertyName UnityEngine.PropertyName
---@return string
function m.StringFromPropertyName(propertyName) end

---@static
---@param id number
---@return number
function m.ConflictCountForID(id) end

UnityEngine.PropertyNameUtils = m
return m
