---@class TQ.ProcedureComponent : TQ.TQBaseComponent
---@field public CurrProcedureState TQ.ProcedureState
---@field public CurrProcedure TQ.FsmState_1_TQ_ProcedureManager_
local m = {}

---@param key string
---@param value any
function m:SetData(key, value) end

---@param key string
---@return any
function m:GetData(key) end

---@param state TQ.ProcedureState
function m:ChangeState(state) end

---@virtual
function m:Shutdown() end

---@virtual
function m:OnUpdate() end

TQ.ProcedureComponent = m
return m
