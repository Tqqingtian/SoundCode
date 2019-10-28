---@class UnityEngine.Network : System.Object
---@field public incomingPassword string @static
---@field public logLevel UnityEngine.NetworkLogLevel @static
---@field public connections UnityEngine.NetworkPlayer[] @static
---@field public player UnityEngine.NetworkPlayer @static
---@field public isClient boolean @static
---@field public isServer boolean @static
---@field public peerType UnityEngine.NetworkPeerType @static
---@field public sendRate number @static
---@field public isMessageQueueRunning boolean @static
---@field public time number @static
---@field public minimumAllocatableViewIDs number @static
---@field public useNat boolean @static
---@field public natFacilitatorIP string @static
---@field public natFacilitatorPort number @static
---@field public connectionTesterIP string @static
---@field public connectionTesterPort number @static
---@field public maxConnections number @static
---@field public proxyIP string @static
---@field public proxyPort number @static
---@field public useProxy boolean @static
---@field public proxyPassword string @static
local m = {}

---@overload fun(connections:number, listenPort:number): @static
---@static
---@param connections number
---@param listenPort number
---@param useNat boolean
---@return UnityEngine.NetworkConnectionError
function m.InitializeServer(connections, listenPort, useNat) end

---@static
function m.InitializeSecurity() end

---@overload fun(IP:string, remotePort:number, password:string): @static
---@overload fun(IPs:string[], remotePort:number): @static
---@overload fun(IPs:string[], remotePort:number, password:string): @static
---@overload fun(GUID:string): @static
---@overload fun(GUID:string, password:string): @static
---@overload fun(hostData:UnityEngine.HostData): @static
---@overload fun(hostData:UnityEngine.HostData, password:string): @static
---@static
---@param IP string
---@param remotePort number
---@return UnityEngine.NetworkConnectionError
function m.Connect(IP, remotePort) end

---@overload fun(timeout:number) @static
---@static
function m.Disconnect() end

---@static
---@param target UnityEngine.NetworkPlayer
---@param sendDisconnectionNotification boolean
function m.CloseConnection(target, sendDisconnectionNotification) end

---@static
---@return UnityEngine.NetworkViewID
function m.AllocateViewID() end

---@static
---@param prefab UnityEngine.Object
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@param group number
---@return UnityEngine.Object
function m.Instantiate(prefab, position, rotation, group) end

---@overload fun(gameObject:UnityEngine.GameObject) @static
---@static
---@param viewID UnityEngine.NetworkViewID
function m.Destroy(viewID) end

---@static
---@param playerID UnityEngine.NetworkPlayer
function m.DestroyPlayerObjects(playerID) end

---@overload fun(playerID:UnityEngine.NetworkPlayer, group:number) @static
---@overload fun(viewID:UnityEngine.NetworkViewID) @static
---@static
---@param playerID UnityEngine.NetworkPlayer
function m.RemoveRPCs(playerID) end

---@static
---@param group number
function m.RemoveRPCsInGroup(group) end

---@static
---@param prefix number
function m.SetLevelPrefix(prefix) end

---@static
---@param player UnityEngine.NetworkPlayer
---@return number
function m.GetLastPing(player) end

---@static
---@param player UnityEngine.NetworkPlayer
---@return number
function m.GetAveragePing(player) end

---@static
---@param player UnityEngine.NetworkPlayer
---@param group number
---@param enabled boolean
function m.SetReceivingEnabled(player, group, enabled) end

---@overload fun(player:UnityEngine.NetworkPlayer, group:number, enabled:boolean) @static
---@static
---@param group number
---@param enabled boolean
function m.SetSendingEnabled(group, enabled) end

---@overload fun(forceTest:boolean): @static
---@static
---@return UnityEngine.ConnectionTesterStatus
function m.TestConnection() end

---@overload fun(forceTest:boolean): @static
---@static
---@return UnityEngine.ConnectionTesterStatus
function m.TestConnectionNAT() end

---@static
---@return boolean
function m.HavePublicAddress() end

UnityEngine.Network = m
return m
