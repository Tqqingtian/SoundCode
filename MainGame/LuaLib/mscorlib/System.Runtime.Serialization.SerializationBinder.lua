---@class System.Runtime.Serialization.SerializationBinder : System.Object
local m = {}

---@virtual
---@param serializedType System.Type
---@return System.String, System.String
function m:BindToName(serializedType) end

---@abstract
---@param assemblyName string
---@param typeName string
---@return System.Type
function m:BindToType(assemblyName, typeName) end

System.Runtime.Serialization.SerializationBinder = m
return m
