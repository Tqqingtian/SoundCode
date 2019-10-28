---@class System.Runtime.Remoting.RemotingServices : System.Object
local m = {}

---@static
---@param proxy any
---@return boolean
function m.IsTransparentProxy(proxy) end

---@static
---@param target System.MarshalByRefObject
---@param reqMsg System.Runtime.Remoting.Messaging.IMethodCallMessage
---@return System.Runtime.Remoting.Messaging.IMethodReturnMessage
function m.ExecuteMessage(target, reqMsg) end

---@overload fun(classToProxy:System.Type, url:string, data:any): @static
---@static
---@param classToProxy System.Type
---@param url string
---@return any
function m.Connect(classToProxy, url) end

---@static
---@param obj System.MarshalByRefObject
---@return boolean
function m.Disconnect(obj) end

---@static
---@param URI string
---@return System.Type
function m.GetServerTypeForUri(URI) end

---@static
---@param obj System.MarshalByRefObject
---@return string
function m.GetObjectUri(obj) end

---@overload fun(objectRef:System.Runtime.Remoting.ObjRef, fRefine:boolean): @static
---@static
---@param objectRef System.Runtime.Remoting.ObjRef
---@return any
function m.Unmarshal(objectRef) end

---@overload fun(Obj:System.MarshalByRefObject, URI:string): @static
---@overload fun(Obj:System.MarshalByRefObject, ObjURI:string, RequestedType:System.Type): @static
---@static
---@param Obj System.MarshalByRefObject
---@return System.Runtime.Remoting.ObjRef
function m.Marshal(Obj) end

---@static
---@param proxy any
---@return System.Runtime.Remoting.Proxies.RealProxy
function m.GetRealProxy(proxy) end

---@static
---@param msg System.Runtime.Remoting.Messaging.IMethodMessage
---@return System.Reflection.MethodBase
function m.GetMethodBaseFromMethodMessage(msg) end

---@static
---@param obj any
---@param info System.Runtime.Serialization.SerializationInfo
---@param context System.Runtime.Serialization.StreamingContext
function m.GetObjectData(obj, info, context) end

---@static
---@param obj System.MarshalByRefObject
---@return System.Runtime.Remoting.ObjRef
function m.GetObjRefForProxy(obj) end

---@static
---@param obj System.MarshalByRefObject
---@return any
function m.GetLifetimeService(obj) end

---@static
---@param obj System.MarshalByRefObject
---@return System.Runtime.Remoting.Messaging.IMessageSink
function m.GetEnvoyChainForProxy(obj) end

---@static
---@param stage number
function m.LogRemotingStage(stage) end

---@static
---@param msg System.Runtime.Remoting.Messaging.IMethodMessage
---@return string
function m.GetSessionIdForMethodMessage(msg) end

---@static
---@param msg System.Runtime.Remoting.Messaging.IMethodMessage
---@return boolean
function m.IsMethodOverloaded(msg) end

---@static
---@param tp any
---@return boolean
function m.IsObjectOutOfAppDomain(tp) end

---@static
---@param tp any
---@return boolean
function m.IsObjectOutOfContext(tp) end

---@static
---@param method System.Reflection.MethodBase
---@return boolean
function m.IsOneWay(method) end

---@static
---@param obj System.MarshalByRefObject
---@param uri string
function m.SetObjectUriForMarshal(obj, uri) end

System.Runtime.Remoting.RemotingServices = m
return m
