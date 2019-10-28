---@class System.Runtime.Remoting.ServerIdentity : System.Runtime.Remoting.Identity
---@field public ObjectType System.Type
---@field public Lease System.Runtime.Remoting.Lifetime.Lease
---@field public Context System.Runtime.Remoting.Contexts.Context
local m = {}

---@param lease System.Runtime.Remoting.Lifetime.ILease
function m:StartTrackingLifetime(lease) end

---@virtual
function m:OnLifetimeExpired() end

---@virtual
---@param requestedType System.Type
---@return System.Runtime.Remoting.ObjRef
function m:CreateObjRef(requestedType) end

---@param serverObject System.MarshalByRefObject
---@param context System.Runtime.Remoting.Contexts.Context
function m:AttachServerObject(serverObject, context) end

---@abstract
---@param msg System.Runtime.Remoting.Messaging.IMessage
---@return System.Runtime.Remoting.Messaging.IMessage
function m:SyncObjectProcessMessage(msg) end

---@abstract
---@param msg System.Runtime.Remoting.Messaging.IMessage
---@param replySink System.Runtime.Remoting.Messaging.IMessageSink
---@return System.Runtime.Remoting.Messaging.IMessageCtrl
function m:AsyncObjectProcessMessage(msg, replySink) end

System.Runtime.Remoting.ServerIdentity = m
return m
