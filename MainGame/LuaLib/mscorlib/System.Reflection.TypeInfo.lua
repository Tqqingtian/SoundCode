---@class System.Reflection.TypeInfo : System.Type
---@field public GenericTypeParameters System.Type[]
---@field public DeclaredConstructors System.Collections.Generic.IEnumerable_1_System_Reflection_ConstructorInfo_
---@field public DeclaredEvents System.Collections.Generic.IEnumerable_1_System_Reflection_EventInfo_
---@field public DeclaredFields System.Collections.Generic.IEnumerable_1_System_Reflection_FieldInfo_
---@field public DeclaredMembers System.Collections.Generic.IEnumerable_1_System_Reflection_MemberInfo_
---@field public DeclaredMethods System.Collections.Generic.IEnumerable_1_System_Reflection_MethodInfo_
---@field public DeclaredNestedTypes System.Collections.Generic.IEnumerable_1_System_Reflection_TypeInfo_
---@field public DeclaredProperties System.Collections.Generic.IEnumerable_1_System_Reflection_PropertyInfo_
---@field public ImplementedInterfaces System.Collections.Generic.IEnumerable_1_System_Type_
local m = {}

---@virtual
---@return System.Type
function m:AsType() end

---@virtual
---@param typeInfo System.Reflection.TypeInfo
---@return boolean
function m:IsAssignableFrom(typeInfo) end

---@virtual
---@param name string
---@return System.Reflection.EventInfo
function m:GetDeclaredEvent(name) end

---@virtual
---@param name string
---@return System.Reflection.FieldInfo
function m:GetDeclaredField(name) end

---@virtual
---@param name string
---@return System.Reflection.MethodInfo
function m:GetDeclaredMethod(name) end

---@virtual
---@param name string
---@return System.Collections.Generic.IEnumerable_1_System_Reflection_MethodInfo_
function m:GetDeclaredMethods(name) end

---@virtual
---@param name string
---@return System.Reflection.TypeInfo
function m:GetDeclaredNestedType(name) end

---@virtual
---@param name string
---@return System.Reflection.PropertyInfo
function m:GetDeclaredProperty(name) end

---@extension
---@param interfaceType System.Type
---@return System.Reflection.InterfaceMapping
function m.GetRuntimeInterfaceMap(interfaceType) end

System.Reflection.TypeInfo = m
return m
