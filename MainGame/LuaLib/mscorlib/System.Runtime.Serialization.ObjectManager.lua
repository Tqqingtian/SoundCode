---@class System.Runtime.Serialization.ObjectManager : System.Object
local m = {}

---@virtual
---@param objectID number
---@return any
function m:GetObject(objectID) end

---@overload fun(obj:any, objectID:number, info:System.Runtime.Serialization.SerializationInfo)
---@overload fun(obj:any, objectID:number, info:System.Runtime.Serialization.SerializationInfo, idOfContainingObj:number, member:System.Reflection.MemberInfo)
---@overload fun(obj:any, objectID:number, info:System.Runtime.Serialization.SerializationInfo, idOfContainingObj:number, member:System.Reflection.MemberInfo, arrayIndex:number[])
---@virtual
---@param obj any
---@param objectID number
function m:RegisterObject(obj, objectID) end

---@virtual
function m:DoFixups() end

---@virtual
---@param objectToBeFixed number
---@param member System.Reflection.MemberInfo
---@param objectRequired number
function m:RecordFixup(objectToBeFixed, member, objectRequired) end

---@virtual
---@param objectToBeFixed number
---@param memberName string
---@param objectRequired number
function m:RecordDelayedFixup(objectToBeFixed, memberName, objectRequired) end

---@overload fun(arrayToBeFixed:number, indices:number[], objectRequired:number) @virtual
---@virtual
---@param arrayToBeFixed number
---@param index number
---@param objectRequired number
function m:RecordArrayElementFixup(arrayToBeFixed, index, objectRequired) end

---@virtual
function m:RaiseDeserializationEvent() end

---@param obj any
function m:RaiseOnDeserializingEvent(obj) end

System.Runtime.Serialization.ObjectManager = m
return m
