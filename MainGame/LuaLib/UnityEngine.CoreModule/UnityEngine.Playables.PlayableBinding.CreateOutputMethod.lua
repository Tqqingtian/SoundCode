---@class UnityEngine.Playables.PlayableBinding.CreateOutputMethod : System.MulticastDelegate
local m = {}

---@virtual
---@param graph UnityEngine.Playables.PlayableGraph
---@param name string
---@return UnityEngine.Playables.PlayableOutput
function m:Invoke(graph, name) end

---@virtual
---@param graph UnityEngine.Playables.PlayableGraph
---@param name string
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(graph, name, callback, object) end

---@virtual
---@param result System.IAsyncResult
---@return UnityEngine.Playables.PlayableOutput
function m:EndInvoke(result) end

UnityEngine.Playables.PlayableBinding.CreateOutputMethod = m
return m
