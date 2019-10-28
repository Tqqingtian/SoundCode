---@class TQ.ProcedureBase : TQ.FsmState_1_TQ_ProcedureManager_
local m = {}

---@virtual
function m:OnEnter() end

---@virtual
function m:OnUpdate() end

---@virtual
function m:OnLeave() end

---@virtual
function m:OnDestry() end

TQ.ProcedureBase = m
return m
