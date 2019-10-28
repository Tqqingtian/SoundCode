---@class System.Reflection.EventInfo : System.Reflection.MemberInfo
---@field public Attributes System.Reflection.EventAttributes
---@field public EventHandlerType System.Type
---@field public IsMulticast boolean
---@field public IsSpecialName boolean
---@field public MemberType System.Reflection.MemberTypes
---@field public AddMethod System.Reflection.MethodInfo
---@field public RaiseMethod System.Reflection.MethodInfo
---@field public RemoveMethod System.Reflection.MethodInfo
local m = {}

---@virtual
---@param target any
---@param handler fun(...:any|any[]):
function m:AddEventHandler(target, handler) end

---@overload fun(nonPublic:boolean): @abstract
---@virtual
---@return System.Reflection.MethodInfo
function m:GetAddMethod() end

---@overload fun(nonPublic:boolean): @abstract
---@virtual
---@return System.Reflection.MethodInfo
function m:GetRaiseMethod() end

---@overload fun(nonPublic:boolean): @abstract
---@virtual
---@return System.Reflection.MethodInfo
function m:GetRemoveMethod() end

---@overload fun():
---@virtual
---@param nonPublic boolean
---@return System.Reflection.MethodInfo[]
function m:GetOtherMethods(nonPublic) end

---@virtual
---@param target any
---@param handler fun(...:any|any[]):
function m:RemoveEventHandler(target, handler) end

---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@param left System.Reflection.EventInfo
---@param right System.Reflection.EventInfo
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left System.Reflection.EventInfo
---@param right System.Reflection.EventInfo
---@return boolean
function m.op_Inequality(left, right) end

System.Reflection.EventInfo = m
return m
