---@class UnityEngine.Networking.PlayerConnection.IEditorPlayerConnection : table
local m = {}

---@abstract
---@param messageId System.Guid
---@param callback fun(arg0:UnityEngine.Networking.PlayerConnection.MessageEventArgs)
function m:Register(messageId, callback) end

---@abstract
---@param messageId System.Guid
---@param callback fun(arg0:UnityEngine.Networking.PlayerConnection.MessageEventArgs)
function m:Unregister(messageId, callback) end

---@abstract
function m:DisconnectAll() end

---@abstract
---@param callback fun(arg0:number)
function m:RegisterConnection(callback) end

---@abstract
---@param callback fun(arg0:number)
function m:RegisterDisconnection(callback) end

---@abstract
---@param messageId System.Guid
---@param data string
function m:Send(messageId, data) end

UnityEngine.Networking.PlayerConnection.IEditorPlayerConnection = m
return m
