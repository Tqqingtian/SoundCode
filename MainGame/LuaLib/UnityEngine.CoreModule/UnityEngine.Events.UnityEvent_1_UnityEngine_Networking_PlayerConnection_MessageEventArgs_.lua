---@class UnityEngine.Events.UnityEvent_1_UnityEngine_Networking_PlayerConnection_MessageEventArgs_ : UnityEngine.Events.UnityEventBase
local m = {}

---@param call fun(arg0:UnityEngine.Networking.PlayerConnection.MessageEventArgs)
function m:AddListener(call) end

---@param call fun(arg0:UnityEngine.Networking.PlayerConnection.MessageEventArgs)
function m:RemoveListener(call) end

---@param arg0 UnityEngine.Networking.PlayerConnection.MessageEventArgs
function m:Invoke(arg0) end

UnityEngine.Events.UnityEvent_1_UnityEngine_Networking_PlayerConnection_MessageEventArgs_ = m
return m
