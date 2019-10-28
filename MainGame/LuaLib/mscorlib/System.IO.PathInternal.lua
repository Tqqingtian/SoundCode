---@class System.IO.PathInternal : System.Object
local m = {}

---@static
---@param path string
---@return boolean
function m.IsPartiallyQualified(path) end

---@static
---@param path string
---@param checkAdditional boolean
---@return boolean
function m.HasIllegalCharacters(path, checkAdditional) end

System.IO.PathInternal = m
return m
