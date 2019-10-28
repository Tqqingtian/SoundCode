---@class System.Runtime.Serialization.FormatterServices : System.Object
local m = {}

---@overload fun(type:System.Type, context:System.Runtime.Serialization.StreamingContext): @static
---@static
---@param type System.Type
---@return System.Reflection.MemberInfo[]
function m.GetSerializableMembers(type) end

---@static
---@param t System.Type
---@param securityLevel System.Runtime.Serialization.Formatters.TypeFilterLevel
function m.CheckTypeSecurity(t, securityLevel) end

---@static
---@param type System.Type
---@return any
function m.GetUninitializedObject(type) end

---@static
---@param type System.Type
---@return any
function m.GetSafeUninitializedObject(type) end

---@static
---@param obj any
---@param members System.Reflection.MemberInfo[]
---@param data any[]
---@return any
function m.PopulateObjectMembers(obj, members, data) end

---@static
---@param obj any
---@param members System.Reflection.MemberInfo[]
---@return any[]
function m.GetObjectData(obj, members) end

---@static
---@param innerSurrogate System.Runtime.Serialization.ISerializationSurrogate
---@return System.Runtime.Serialization.ISerializationSurrogate
function m.GetSurrogateForCyclicalReference(innerSurrogate) end

---@static
---@param assem System.Reflection.Assembly
---@param name string
---@return System.Type
function m.GetTypeFromAssembly(assem, name) end

System.Runtime.Serialization.FormatterServices = m
return m
