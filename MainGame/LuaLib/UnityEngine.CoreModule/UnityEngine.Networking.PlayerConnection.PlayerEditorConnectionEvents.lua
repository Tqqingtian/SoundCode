---@class UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents : System.Object
---@field public messageTypeSubscribers UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents.MessageTypeSubscribers[]
---@field public connectionEvent UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents.ConnectionChangeEvent
---@field public disconnectionEvent UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents.ConnectionChangeEvent
local m = {}

---@param messageId System.Guid
---@param data string
---@param playerId number
function m:InvokeMessageIdSubscribers(messageId, data, playerId) end

---@param messageId System.Guid
---@return UnityEngine.Events.UnityEvent_1_UnityEngine_Networking_PlayerConnection_MessageEventArgs_
function m:AddAndCreate(messageId) end

---@param messageId System.Guid
---@param callback fun(arg0:UnityEngine.Networking.PlayerConnection.MessageEventArgs)
function m:UnregisterManagedCallback(messageId, callback) end

UnityEngine.Networking.PlayerConnection.PlayerEditorConnectionEvents = m
return m
