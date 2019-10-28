---@class System.Reflection.Pointer : System.Object
local m = {}

---@static
---@param ptr System.Void*
---@param type System.Type
---@return any
function m.Box(ptr, type) end

---@static
---@param ptr any
---@return System.Void*
function m.Unbox(ptr) end

System.Reflection.Pointer = m
return m
