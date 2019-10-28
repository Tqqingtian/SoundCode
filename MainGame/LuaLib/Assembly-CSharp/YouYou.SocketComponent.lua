---@class TQ.SocketComponent : TQ.TQBaseComponent
---@field public MaxSendCount number
---@field public MaxSendByteCount number
---@field public MaxReceiveCount number
---@field public HearbeatInterval number
---@field public PingValue number
---@field public GameServerTime number
---@field public CheckServerTime number
---@field public SocketSendMS MMO_MemoryStream
---@field public SocketReceiveMS MMO_MemoryStream
local m = {}

---@return TQ.SocketTcpRoutime
function m:CreateSocketTcpRoutime() end

---@virtual
function m:OnUpdate() end

---@virtual
function m:Shutdown() end

---@param ip string
---@param port number
function m:ConnerToMainSocket(ip, port) end

---@overload fun(proto:TQ.IProto)
---@param buffer string
function m:SendMsg(buffer) end

TQ.SocketComponent = m
return m
