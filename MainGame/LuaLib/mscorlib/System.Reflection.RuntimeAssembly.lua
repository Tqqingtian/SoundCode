---@class System.Reflection.RuntimeAssembly : System.Reflection.Assembly
local m = {}

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

---@virtual
---@param copiedName boolean
---@return System.Reflection.AssemblyName
function m:GetName(copiedName) end

System.Reflection.RuntimeAssembly = m
return m
