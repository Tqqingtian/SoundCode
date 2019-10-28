---@class TQ.FsmComponent : TQ.TQBaseComponent
local m = {}

---@param owner any
---@param states any[]
---@return TQ.FsmBase
function m:Create(owner, states) end

---@param fsmId number
function m:DestroyFsm(fsmId) end

---@virtual
function m:Shutdown() end

TQ.FsmComponent = m
return m
