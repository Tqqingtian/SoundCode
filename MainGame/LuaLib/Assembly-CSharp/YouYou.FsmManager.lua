---@class TQ.FsmManager : TQ.ManagerBase
local m = {}

---@param fsmId number
---@param owner any
---@param states any[]
---@return TQ.FsmBase
function m:Create(fsmId, owner, states) end

---@param fsmId number
function m:DestroyFsm(fsmId) end

---@virtual
function m:Dispose() end

TQ.FsmManager = m
return m
