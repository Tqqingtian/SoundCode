---@class UnityEngine.NetworkView : UnityEngine.Behaviour
---@field public observed UnityEngine.Component
---@field public stateSynchronization UnityEngine.NetworkStateSynchronization
---@field public viewID UnityEngine.NetworkViewID
---@field public group number
---@field public isMine boolean
---@field public owner UnityEngine.NetworkPlayer
local m = {}

---@overload fun(name:string, mode:UnityEngine.RPCMode)
---@overload fun(name:string, target:UnityEngine.NetworkPlayer, ...:any|any[])
---@overload fun(name:string, target:UnityEngine.NetworkPlayer)
---@param name string
---@param mode UnityEngine.RPCMode
---@param ... any|any[]
function m:RPC(name, mode, ...) end

UnityEngine.NetworkView = m
return m
