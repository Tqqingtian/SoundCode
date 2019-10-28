---@class TQ.Fsm_1_T_ : TQ.FsmBase
local m = {}

---@param stateType number
---@return any
function m:GetState(stateType) end

function m:OnUpdate() end

---@param newState number
function m:ChangeState(newState) end

---@param key string
---@param value any
function m:SetData(key, value) end

---@param key string
---@return any
function m:GetData(key) end

---@virtual
function m:ShutDown() end

TQ.Fsm_1_T_ = m
return m
