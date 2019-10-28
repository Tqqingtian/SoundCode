---@class System.Reflection.MemberInfoSerializationHolder : System.Object
local m = {}

---@overload fun(info:System.Runtime.Serialization.SerializationInfo, name:string, reflectedClass:System.RuntimeType, signature:string, signature2:string, type:System.Reflection.MemberTypes, genericArguments:System.Type[]) @static
---@static
---@param info System.Runtime.Serialization.SerializationInfo
---@param name string
---@param reflectedClass System.RuntimeType
---@param signature string
---@param type System.Reflection.MemberTypes
function m.GetSerializationInfo(info, name, reflectedClass, signature, type) end

---@virtual
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m:GetObjectData(info, context) end

---@virtual
---@param context System.Runtime.Serialization.StreamingContext
---@return any
function m:GetRealObject(context) end

System.Reflection.MemberInfoSerializationHolder = m
return m
