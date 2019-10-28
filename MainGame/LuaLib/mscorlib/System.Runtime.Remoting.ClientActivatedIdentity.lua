---@class System.Runtime.Remoting.ClientActivatedIdentity : System.Runtime.Remoting.ServerIdentity
local m = {}

---@return System.MarshalByRefObject
function m:GetServerObject() end

---@return System.MarshalByRefObject
function m:GetClientProxy() end

---@param obj System.MarshalByRefObject
function m:SetClientProxy(obj) end

---@virtual
function m:OnLifetimeExpired() end

---@virtual
---@param msg System.Runtime.Remoting.Messaging.IMessage
---@return System.Runtime.Remoting.Messaging.IMessage
function m:SyncObjectProcessMessage(msg) end

---@virtual
---@param msg System.Runtime.Remoting.Messaging.IMessage
---@param replySink System.Runtime.Remoting.Messaging.IMessageSink
---@return System.Runtime.Remoting.Messaging.IMessageCtrl
function m:AsyncObjectProcessMessage(msg, replySink) end

System.Runtime.Remoting.ClientActivatedIdentity = m
return m
