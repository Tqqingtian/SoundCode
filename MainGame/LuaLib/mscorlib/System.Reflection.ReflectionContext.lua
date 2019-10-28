---@class System.Reflection.ReflectionContext : System.Object
local m = {}

---@abstract
---@param assembly System.Reflection.Assembly
---@return System.Reflection.Assembly
function m:MapAssembly(assembly) end

---@abstract
---@param type System.Reflection.TypeInfo
---@return System.Reflection.TypeInfo
function m:MapType(type) end

---@virtual
---@param value any
---@return System.Reflection.TypeInfo
function m:GetTypeForObject(value) end

System.Reflection.ReflectionContext = m
return m
