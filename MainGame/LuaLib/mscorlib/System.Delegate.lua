---@class System.Delegate : System.Object
---@field public Method System.Reflection.MethodInfo
---@field public Target any
local m = {}

---@overload fun(type:System.Type, firstArgument:any, method:System.Reflection.MethodInfo): @static
---@overload fun(type:System.Type, method:System.Reflection.MethodInfo, throwOnBindFailure:boolean): @static
---@overload fun(type:System.Type, method:System.Reflection.MethodInfo): @static
---@overload fun(type:System.Type, target:any, method:string): @static
---@overload fun(type:System.Type, target:System.Type, method:string, ignoreCase:boolean, throwOnBindFailure:boolean): @static
---@overload fun(type:System.Type, target:System.Type, method:string): @static
---@overload fun(type:System.Type, target:System.Type, method:string, ignoreCase:boolean): @static
---@overload fun(type:System.Type, target:any, method:string, ignoreCase:boolean, throwOnBindFailure:boolean): @static
---@overload fun(type:System.Type, target:any, method:string, ignoreCase:boolean): @static
---@static
---@param type System.Type
---@param firstArgument any
---@param method System.Reflection.MethodInfo
---@param throwOnBindFailure boolean
---@return fun(...:any|any[]):
function m.CreateDelegate(type, firstArgument, method, throwOnBindFailure) end

---@overload fun():
---@param ... any|any[]
---@return any
function m:DynamicInvoke(...) end

---@virtual
---@return any
function m:Clone() end

---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@virtual
---@return number
function m:GetHashCode() end

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

---@virtual
---@return fun(...:any|any[]):[]
function m:GetInvocationList() end

---@overload fun(...:fun(...:any|any[]):|fun(...:any|any[]):[]): @static
---@overload fun(): @static
---@static
---@param a fun(...:any|any[]):
---@param b fun(...:any|any[]):
---@return fun(...:any|any[]):
function m.Combine(a, b) end

---@static
---@param source fun(...:any|any[]):
---@param value fun(...:any|any[]):
---@return fun(...:any|any[]):
function m.Remove(source, value) end

---@static
---@param source fun(...:any|any[]):
---@param value fun(...:any|any[]):
---@return fun(...:any|any[]):
function m.RemoveAll(source, value) end

---@static
---@param d1 fun(...:any|any[]):
---@param d2 fun(...:any|any[]):
---@return boolean
function m.op_Equality(d1, d2) end

---@static
---@param d1 fun(...:any|any[]):
---@param d2 fun(...:any|any[]):
---@return boolean
function m.op_Inequality(d1, d2) end

---@overload fun(): @extension
---@extension
---@return System.Reflection.MethodInfo
function m.GetMethodInfo() end

System.Delegate = m
return m
