---@class System.Reflection.RuntimeReflectionExtensions : System.Object
local m = {}

---@static
---@param type System.Type
---@return System.Collections.Generic.IEnumerable_1_System_Reflection_PropertyInfo_
function m.GetRuntimeProperties(type) end

---@static
---@param type System.Type
---@return System.Collections.Generic.IEnumerable_1_System_Reflection_EventInfo_
function m.GetRuntimeEvents(type) end

---@static
---@param type System.Type
---@return System.Collections.Generic.IEnumerable_1_System_Reflection_MethodInfo_
function m.GetRuntimeMethods(type) end

---@static
---@param type System.Type
---@return System.Collections.Generic.IEnumerable_1_System_Reflection_FieldInfo_
function m.GetRuntimeFields(type) end

---@static
---@param type System.Type
---@param name string
---@return System.Reflection.PropertyInfo
function m.GetRuntimeProperty(type, name) end

---@static
---@param type System.Type
---@param name string
---@return System.Reflection.EventInfo
function m.GetRuntimeEvent(type, name) end

---@static
---@param type System.Type
---@param name string
---@param parameters System.Type[]
---@return System.Reflection.MethodInfo
function m.GetRuntimeMethod(type, name, parameters) end

---@static
---@param type System.Type
---@param name string
---@return System.Reflection.FieldInfo
function m.GetRuntimeField(type, name) end

---@static
---@param method System.Reflection.MethodInfo
---@return System.Reflection.MethodInfo
function m.GetRuntimeBaseDefinition(method) end

---@static
---@param typeInfo System.Reflection.TypeInfo
---@param interfaceType System.Type
---@return System.Reflection.InterfaceMapping
function m.GetRuntimeInterfaceMap(typeInfo, interfaceType) end

---@static
---@param del fun(...:any|any[]):
---@return System.Reflection.MethodInfo
function m.GetMethodInfo(del) end

System.Reflection.RuntimeReflectionExtensions = m
return m
