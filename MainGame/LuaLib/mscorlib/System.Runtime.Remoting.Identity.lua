---@class System.Runtime.Remoting.Identity : System.Object
---@field public IsFromThisAppDomain boolean
---@field public ChannelSink System.Runtime.Remoting.Messaging.IMessageSink
---@field public EnvoySink System.Runtime.Remoting.Messaging.IMessageSink
---@field public ObjectUri string
---@field public IsConnected boolean
---@field public Disposed boolean
---@field public ClientDynamicProperties System.Runtime.Remoting.Contexts.DynamicPropertyCollection
---@field public ServerDynamicProperties System.Runtime.Remoting.Contexts.DynamicPropertyCollection
---@field public HasClientDynamicSinks boolean
---@field public HasServerDynamicSinks boolean
local m = {}

---@abstract
---@param requestedType System.Type
---@return System.Runtime.Remoting.ObjRef
function m:CreateObjRef(requestedType) end

---@param start boolean
---@param req_msg System.Runtime.Remoting.Messaging.IMessage
---@param client_site boolean
---@param async boolean
function m:NotifyClientDynamicSinks(start, req_msg, client_site, async) end

---@param start boolean
---@param req_msg System.Runtime.Remoting.Messaging.IMessage
---@param client_site boolean
---@param async boolean
function m:NotifyServerDynamicSinks(start, req_msg, client_site, async) end

System.Runtime.Remoting.Identity = m
return m
