---@class TQ.FsmState_1_TQ_ProcedureManager_ : System.Object
---@field public CurrFsm TQ.Fsm_1_TQ_ProcedureManager_
local m = {}

---@virtual
function m:OnEnter() end

---@virtual
function m:OnUpdate() end

---@virtual
function m:OnLeave() end

---@virtual
function m:OnDestry() end

TQ.FsmState_1_TQ_ProcedureManager_ = m
return m
