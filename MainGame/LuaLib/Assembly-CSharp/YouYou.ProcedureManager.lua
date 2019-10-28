---@class TQ.ProcedureManager : TQ.ManagerBase
---@field public CurrFsm TQ.Fsm_1_TQ_ProcedureManager_
---@field public CurrProcedureState TQ.ProcedureState
---@field public CurrProcedure TQ.FsmState_1_TQ_ProcedureManager_
local m = {}

function m:Init() end

---@param state TQ.ProcedureState
function m:ChangeState(state) end

function m:OnUpdate() end

---@virtual
function m:Dispose() end

TQ.ProcedureManager = m
return m
