---@class System.Reflection.Emit.EventOnTypeBuilderInst : System.Reflection.EventInfo
---@field public Attributes System.Reflection.EventAttributes
---@field public DeclaringType System.Type
---@field public Name string
---@field public ReflectedType System.Type
local m = {}

---@virtual
---@param nonPublic boolean
---@return System.Reflection.MethodInfo
function m:GetAddMethod(nonPublic) end

---@virtual
---@param nonPublic boolean
---@return System.Reflection.MethodInfo
function m:GetRaiseMethod(nonPublic) end

---@virtual
---@param nonPublic boolean
---@return System.Reflection.MethodInfo
function m:GetRemoveMethod(nonPublic) end

---@virtual
---@param nonPublic boolean
---@return System.Reflection.MethodInfo[]
function m:GetOtherMethods(nonPublic) end

---@virtual
---@param attributeType System.Type
---@param inherit boolean
---@return boolean
function m:IsDefined(attributeType, inherit) end

---@overload fun(attributeType:System.Type, inherit:boolean): @virtual
---@virtual
---@param inherit boolean
---@return any[]
function m:GetCustomAttributes(inherit) end

System.Reflection.Emit.EventOnTypeBuilderInst = m
return m
