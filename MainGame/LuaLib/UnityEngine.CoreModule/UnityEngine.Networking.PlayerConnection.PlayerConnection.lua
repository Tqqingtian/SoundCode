---@class UnityEngine.Networking.PlayerConnection.PlayerConnection : UnityEngine.ScriptableObject
---@field public instance UnityEngine.Networking.PlayerConnection.PlayerConnection @static
---@field public isConnected boolean
local m = {}

function m:OnEnable() end

---@virtual
---@param messageId System.Guid
---@param callback fun(arg0:UnityEngine.Networking.PlayerConnection.MessageEventArgs)
function m:Register(messageId, callback) end

---@virtual
---@param messageId System.Guid
---@param callback fun(arg0:UnityEngine.Networking.PlayerConnection.MessageEventArgs)
function m:Unregister(messageId, callback) end

---@virtual
---@param callback fun(arg0:number)
function m:RegisterConnection(callback) end

---@virtual
---@param callback fun(arg0:number)
function m:RegisterDisconnection(callback) end

---@virtual
---@param messageId System.Guid
---@param data string
function m:Send(messageId, data) end

---@param messageId System.Guid
---@param timeout number
---@return boolean
function m:BlockUntilRecvMsg(messageId, timeout) end

---@virtual
function m:DisconnectAll() end

UnityEngine.Networking.PlayerConnection.PlayerConnection = m
return m
